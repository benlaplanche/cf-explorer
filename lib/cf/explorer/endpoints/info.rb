module CF
  module Explorer
    module Endpoints
      class Info
        attr_accessor :client

        def initialize(client)
          @client = client
        end

        def get
          data = client.get('/info', auth: false).status
        end
      end
    end
  end
end