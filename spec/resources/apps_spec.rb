describe "Apps resource" do
  include_context "shared client connection"

  context "when querying the endpoint" do

    context "considering a single application" do
      let(:app) { @my_client.apps.first }

      it "should return 200" do
        expect(app.status).to eq(200)
      end

      it "should have a metadata guid" do
        expect(app.status).to_not be_nil
      end

      it "should have a entity name" do
        expect(app.status).to_not be_nil
      end
    end
  end
end