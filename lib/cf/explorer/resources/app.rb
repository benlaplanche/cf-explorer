module CF
  module Explorer
    module Resources
      class App
        include Virtus.model

        attribute :status, Integer
        attribute :name, String

        attribute :metadata_guid, String
        attribute :metadata_url, String
        attribute :metadata_created_at, DateTime
        attribute :metadata_updated_at, DateTime

        attribute :entity_name, String
        attribute :entity_production, Boolean
        attribute :entity_space_guid, String
        attribute :entity_stack_guid, String
        attribute :entity_buildpack, String
        attribute :entity_detected_buildpack, String
        attribute :entity_environment_json, Hash
        attribute :entity_memory, Integer
        attribute :entity_instances, Integer
        attribute :entity_disk_quota, Integer
        attribute :entity_state, String
        attribute :entity_version, String
        attribute :entity_command, String
        attribute :entity_console, Boolean
        attribute :entity_debug, String
        attribute :entity_staging_task_id, String
        attribute :entity_package_state, String
        attribute :entity_health_check_timeout, String
        attribute :entity_staging_failed_reason, String
        attribute :entity_docker_image, Boolean
        attribute :entity_package_updated_at, DateTime
        attribute :entity_space_url, String
        attribute :entity_events_url, String
        attribute :entity_service_bindings_url, String
        attribute :entity_routes_url, String

      end
    end
  end
end