require 'spec_helper'
RSpec.shared_context "shared client connection" do
  before(:all) { @my_client = CF::Explorer::Client.new(
      uaa_url: 	ENV["CF_UAA"],
      api_url: 	ENV["CF_API"],
      user: 		ENV["CF_USER"],
      password: ENV["CF_PASSWORD"],
      options: {
          skip_ssl_validation: true
      })
  }
end