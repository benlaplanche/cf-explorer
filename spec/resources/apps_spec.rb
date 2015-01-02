describe "Apps resource" do
  include_context "shared client connection"

  context "when querying the endpoint" do

    context "considering a single application" do
      let(:app) { @my_client.apps.first }

      it "should return 200" do
        expect(app.status).to eq(200)
      end

      it "should have a friendly name" do
        expect(app.name).to_not be_nil
      end

      it "should have a metadata guid" do
        expect(app.metadata_guid).to be_a_guid
      end

      it "should have a metadata url" do
        expect(app.metadata_url).to be_a_valid_url
      end

      it "should have a metadata creation date" do
        expect(app.metadata_created_at).to be_instance_of(DateTime)
      end

      it "should have a metadata updated date" do
        expect(app.metadata_updated_at).to be_instance_of(DateTime)
      end

      it "should have an entity name" do
        expect(app.entity_name).to_not be_nil
      end

      it "should have an entity production boolean status" do
        expect(app.entity_production).to eq(true).or eq(false)
      end

      it "should have an entity space guid" do
        expect(app.entity_space_guid).to be_a_guid
      end

      it "should have an entity stack guid" do
        expect(app.entity_stack_guid).to be_a_guid
      end

      it "should have an entity buildpack attribute" do
        expect(app).to respond_to(:entity_buildpack)
      end

      it "should have an entity detected builpack" do
        expect(app.entity_detected_buildpack).to_not be_nil
      end

      it "should have an entity environment JSON" do
        expect(app.entity_environment_json).to be_instance_of(Hash)
      end

      it "should have an entity memory value" do
        expect(app.entity_memory).to be_a_kind_of(Integer)
      end

      it "should have an entity instances count" do
        expect(app.entity_instances).to be_a_kind_of(Integer)
      end

      it "should have an entity disk quota" do
        expect(app.entity_disk_quota).to be_a_kind_of(Integer)
      end

      it "should have an entity state" do
        expect(app.entity_state).to_not be_nil
      end

      it "should have an entity version" do
        expect(app.entity_version).to be_a_guid
      end

      it "should have an entity command" do
        expect(app.entity_command).to be_instance_of(String).or be_nil
      end

      it "should have an entity console" do
        expect(app.entity_console).to eq(true).or eq(false)
      end

      it "should have an entity debug" do
        expect(app.entity_debug).to be_instance_of(String).or be_nil
      end

      it "should have an entity staging task id" do
        expect(app.entity_staging_task_id).to_not be_nil
      end

      it "should have an entity package state" do
        expect(app.entity_package_state).to_not be_nil
      end

      it "should have an entity health check timeout" do
        expect(app.entity_health_check_timeout).to be_instance_of(String).or be_nil
      end

      it "should have an entity staging failed reason" do
        expect(app.entity_staging_failed_reason).to be_instance_of(String).or be_nil
      end

      it "should have an entity docker image" do
        expect(app).to respond_to(:entity_docker_image)
      end

      it "should have an entity package updation date" do
        expect(app.entity_package_updated_at).to be_instance_of(DateTime)
      end

      it "should have an entity space url" do
        expect(app.entity_space_url).to be_a_valid_url
      end

      it "should have an entity events url" do
        expect(app.entity_events_url).to be_a_valid_url
      end

      it "should have an entity service bindings url" do
        expect(app.entity_service_bindings_url).to be_a_valid_url
      end

      it "should have an entity routes url" do
        expect(app.entity_routes_url).to be_a_valid_url
      end
    end
  end
end