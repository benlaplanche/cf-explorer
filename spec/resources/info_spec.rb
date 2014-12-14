

describe "Info resource" do

  context "when querying the endpoint" do
    # before(:all) do
    #   @client=  CF::Explorer::Client.new(
    #       uaa_url: 	ENV["CF_UAA"],
    #       api_url: 	ENV["CF_API"],
    #       user: 		ENV["CF_USER"],
    #       password: ENV["CF_PASSWORD"],
    #       options: {
    #           skip_ssl_validation: true
    #       })
    # end

    it "should return 200", :vcr => { :cassette_name => "info", :record => :once, :match_requests_on => [:host, :path] } do
    # it "should return 200" do
      expect(@client.info.status).to eq(200)
    end

  end
end
