describe "Info resource" do
  include_context "shared client connection"

  context "when querying the endpoint" do

    # it "should return 200", :vcr => { :cassette_name => "info", :record => :once, :match_requests_on => [:host, :path] } do
    it "should return 200" do
      expect(@my_client.info.status).to eq(200)
    end

    it "should have a name" do
      expect(@my_client.info.name).to eq("vcap")
    end

    it "should have a build number" do
      expect(@my_client.info.build).to be_an(Integer)
    end

    it "should have a support URL" do
      expect(@my_client.info.support).to be_a_valid_url
    end

    it "should have a version" do
      expect(@my_client.info.version).to be_an(Integer)
    end

    it "should have a description" do
      expect(@my_client.info.description).to_not be_nil
    end

    it "should have an authorization endpoint" do
      expect(@my_client.info.authorization_endpoint).to be_a_valid_url
    end

    it "should have a token endpoint" do
      expect(@my_client.info.token_endpoint).to be_a_valid_url
    end

    it "should have an api version" do
      expect(@my_client.info.api_version).to match(/\d/)
    end

    it "should have a logging endpoint" do
      expect(@my_client.info.logging_endpoint).to be_a_valid_url
    end

  end
end