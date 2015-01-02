module CF
  module Explorer
    module Resources
      class App
        include Virtus.model

        attribute :status, Integer
        attribute :metadata_guid, String
        attribute :entity_name, String
      end
    end
  end
end