module CF
  module Explorer

    class ClientOptionsError < StandardError
      def message
        "Please provide all of the required Client connection options"
      end
    end

    class ClientTokenError < StandardError
      def message
        "Unable to obtain a Cloud Foundry UAA Token" + super
      end
    end
  end
end