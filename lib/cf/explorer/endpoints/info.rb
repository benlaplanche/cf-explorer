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
          body = data.body
          puts parse_to_hash(body)
          # CF::Explorer::Resources::Info.new( {status: data.status}.merge(data.body))
          CF::Explorer::Resources::Info.new(data)
        end

        def parse_to_hash(string)
          binding.pry
          h = Hash.new
          a = string.gsub(/[\\"{}]/,"")
          b = a.split(',')
          b.each do |x|
            a,b = x.split(/":/)
            h[a] = b
          end
          return h
        end
      end
    end
  end
end