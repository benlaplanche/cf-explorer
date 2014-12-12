

describe "Info resource" do

  context "when querying the endpoint" do
    let(:client) { CF::Explorer::Client.new(
        uaa_url: 	ENV['CF_UAA'],
        api_url: 	ENV['CF_API'],
        user: 		ENV['CF_USER'],
        password: ENV['CF_PASSWORD'],
        options: {
            skip_ssl_validation: true
        })
    }

    it "should return 200" do
      expect(client.info).to eq(200)
    end

  end
end
