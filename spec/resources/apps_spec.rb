describe "Apps resource" do
  include_context "shared client connection"

  context "when querying the endpoint" do

    it "should return 200" do
      expect(@my_client.apps).to eq(200)
    end

  end
end