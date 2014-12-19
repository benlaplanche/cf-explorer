module CF
  module Explorer
    module Resources
      class Info
        include Virtus.model

        attribute :status, Integer
        attribute :name, String
      end
    end
  end
end
