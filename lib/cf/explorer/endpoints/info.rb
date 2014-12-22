module CF
  module Explorer
    module Endpoints
      class Info
        attr_reader :client

        def initialize(client)
          @client = client
        end

        def get
          data = client.get('/info', auth: false)
          CF::Explorer::Resources::Info.new( {status: data.status}.merge(JSON.parse(data.body)))
        end

        def parse_to_hash(string)
          h = Hash.new
          a = string.gsub(/[\\{}]/,"")
          b = a.split(',')
          b.each do |x|
            a,b = x.split(/":/)
            a.gsub!(/"/,'')
            b.gsub!(/"/,'')
            h[a] = b
          end

          h
        end
      end
    end
  end
end