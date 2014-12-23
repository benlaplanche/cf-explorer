module CF
  module Explorer
    module Endpoints
      class Apps
        attr_reader :client

        def initialize(client)
          @client = client
        end

        def get
          data = client.get('/apps', auth: true)
          payload = { status: data.status }.merge(JSON.parse(data.body))

          CF::Explorer::Resources::App.new(payload)
        end

      end
    end
  end
end