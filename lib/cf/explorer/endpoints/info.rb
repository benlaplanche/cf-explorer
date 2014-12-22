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
          payload = { status: data.status }.merge(JSON.parse(data.body))

          CF::Explorer::Resources::Info.new(payload)
        end

      end
    end
  end
end