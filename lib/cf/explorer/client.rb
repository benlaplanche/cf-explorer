module CF
  module Explorer
    class Client
      attr_reader :user, :password, :api_url, :uaa_url, :skip_ssl_validation, :options, :host, :access_token

      def initialize(options={})
        @user 								= options.fetch(:user, "admin")
        @password 						= options.fetch(:password)
        @uaa_url 							= options.fetch(:uaa_url)
        @api_url 							= options.fetch(:api_url)
        @options							= options.fetch(:options)
        @skip_ssl_validation 	= options.fetch(:options).fetch(:skip_ssl_validation)
        connection_options    = options.fetch(:connection_options, { ssl: {verify: false} })

        @host                 = @api_url.gsub(/(https:\/\/|http)/,'')
        @access_token ||= token

        @connection = Faraday.new({url: api_url}.merge(connection_options)) do |faraday|
          faraday.request   :url_encoded
          faraday.response  :logger
          faraday.adapter   Faraday.default_adapter
        end
      end

      def token
        token_issuer = CF::UAA::TokenIssuer.new(uaa_url, "cf", "", options)
        token = token_issuer.implicit_grant_with_creds(username: user, password: password)

        token.info["access_token"]
      end

      def get(path, options={})
        @connection.get do |req|
          req.headers['Cookie'] = ''
          req.headers['Host'] = @host

          if options.fetch(:auth, true)
            req.headers['Authorization'] = "bearer #{@access_token}"
          end

          req.url "v2/#{path}"
        end
      end

      def info
        info ||= CF::Explorer::Endpoints::Info.new(self).get
      end
    end
  end
end