require "cf/explorer/version"

module CF
  module Explorer
  	class Client
	  	attr_reader :user, :password, :api_url, :uaa_url, :skip_ssl_validation

	  	def initialize(options={})
	  		@user 								= options.fetch(:user, "admin")
	  		@password 						= options.fetch(:password)
	  		@uaa_url 							= options.fetch(:uaa_url)
	  		@api_url 							= options.fetch(:api_url)
	  		@skip_ssl_validation 	= options.fetch(:options).fetch(:skip_ssl_validation)
	  	end
  	end
  end
end
