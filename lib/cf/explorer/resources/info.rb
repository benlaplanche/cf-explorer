module CF
  module Explorer
    module Resources
      class Info
        include Virtus.model

        attribute :status, Integer
        attribute :name, String
        attribute :build, Integer
        attribute :support, String
        attribute :version, Integer
        attribute :description, String
        attribute :authorization_endpoint, String
        attribute :token_endpoint, String
        attribute :api_version, Integer
        attribute :logging_endpoint, String
      end
    end
  end
end
