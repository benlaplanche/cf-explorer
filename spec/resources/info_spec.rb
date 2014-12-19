

describe "Info resource" do
  include_context "shared client connection"

  context "when querying the endpoint" do

    # it "should return 200", :vcr => { :cassette_name => "info", :record => :once, :match_requests_on => [:host, :path] } do
    it "should return 200" do
      expect(@my_client.info.status).to eq(200)
    end

    it "should have a name" do
      expect(@my_client.info.name).to_not be_nil
    end
  end
end
