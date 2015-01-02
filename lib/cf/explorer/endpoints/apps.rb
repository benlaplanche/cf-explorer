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
          body = { status: data.status }.merge(JSON.parse(data.body))

          resources = body["resources"]
          body.delete("resources")

          resources.map do |key|
            output = flat_hash(key)
            CF::Explorer::Resources::App.new(body.merge(output))
          end
        end

        def flat_hash(hash,parent='',output={})

          hash.each do |key, value|

            if value.is_a? Hash
              flat_hash(value,key,output)
            else
              key = parent + '_' + key unless parent.nil?
              output[key] = value
            end

          end

          output
        end

      end
    end
  end
end