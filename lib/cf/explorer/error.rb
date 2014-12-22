module CF
  module Explorer
    class ClientOptionsError < StandardError
      def message
        "Please provide all of the required Client connection options"
      end
    end
  end
end