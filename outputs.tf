output "dataproc_metastore_services_id" {
  description = "Map of id values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no id are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataproc_metastore_services_artifact_gcs_uri" {
  description = "Map of artifact_gcs_uri values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no artifact_gcs_uri are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.artifact_gcs_uri if v.artifact_gcs_uri != null && length(v.artifact_gcs_uri) > 0 }
}
output "dataproc_metastore_services_create_time" {
  description = "Map of create_time values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no create_time are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "dataproc_metastore_services_database_type" {
  description = "Map of database_type values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no database_type are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.database_type if v.database_type != null && length(v.database_type) > 0 }
}
output "dataproc_metastore_services_deletion_policy" {
  description = "Map of deletion_policy values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dataproc_metastore_services_deletion_protection" {
  description = "Map of deletion_protection values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no deletion_protection are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.deletion_protection if v.deletion_protection != null }
}
output "dataproc_metastore_services_effective_labels" {
  description = "Map of effective_labels values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no effective_labels are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "dataproc_metastore_services_encryption_config" {
  description = "Map of encryption_config values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no encryption_config are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => one(v.encryption_config) if v.encryption_config != null && length(v.encryption_config) > 0 }
}
output "dataproc_metastore_services_endpoint_uri" {
  description = "Map of endpoint_uri values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no endpoint_uri are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.endpoint_uri if v.endpoint_uri != null && length(v.endpoint_uri) > 0 }
}
output "dataproc_metastore_services_hive_metastore_config" {
  description = "Map of hive_metastore_config values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no hive_metastore_config are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => one(v.hive_metastore_config) if v.hive_metastore_config != null && length(v.hive_metastore_config) > 0 }
}
output "dataproc_metastore_services_labels" {
  description = "Map of labels values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no labels are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "dataproc_metastore_services_location" {
  description = "Map of location values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no location are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dataproc_metastore_services_maintenance_window" {
  description = "Map of maintenance_window values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no maintenance_window are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => one(v.maintenance_window) if v.maintenance_window != null && length(v.maintenance_window) > 0 }
}
output "dataproc_metastore_services_metadata_integration" {
  description = "Map of metadata_integration values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no metadata_integration are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => one(v.metadata_integration) if v.metadata_integration != null && length(v.metadata_integration) > 0 }
}
output "dataproc_metastore_services_name" {
  description = "Map of name values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no name are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataproc_metastore_services_network" {
  description = "Map of network values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no network are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.network if v.network != null && length(v.network) > 0 }
}
output "dataproc_metastore_services_network_config" {
  description = "Map of network_config values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no network_config are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => one(v.network_config) if v.network_config != null && length(v.network_config) > 0 }
}
output "dataproc_metastore_services_port" {
  description = "Map of port values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no port are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.port if v.port != null }
}
output "dataproc_metastore_services_project" {
  description = "Map of project values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no project are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dataproc_metastore_services_release_channel" {
  description = "Map of release_channel values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no release_channel are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.release_channel if v.release_channel != null && length(v.release_channel) > 0 }
}
output "dataproc_metastore_services_scaling_config" {
  description = "Map of scaling_config values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no scaling_config are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => one(v.scaling_config) if v.scaling_config != null && length(v.scaling_config) > 0 }
}
output "dataproc_metastore_services_scheduled_backup" {
  description = "Map of scheduled_backup values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no scheduled_backup are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => one(v.scheduled_backup) if v.scheduled_backup != null && length(v.scheduled_backup) > 0 }
}
output "dataproc_metastore_services_service_id" {
  description = "Map of service_id values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no service_id are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.service_id if v.service_id != null && length(v.service_id) > 0 }
}
output "dataproc_metastore_services_state" {
  description = "Map of state values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no state are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.state if v.state != null && length(v.state) > 0 }
}
output "dataproc_metastore_services_state_message" {
  description = "Map of state_message values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no state_message are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.state_message if v.state_message != null && length(v.state_message) > 0 }
}
output "dataproc_metastore_services_tags" {
  description = "Map of tags values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no tags are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dataproc_metastore_services_telemetry_config" {
  description = "Map of telemetry_config values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no telemetry_config are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => one(v.telemetry_config) if v.telemetry_config != null && length(v.telemetry_config) > 0 }
}
output "dataproc_metastore_services_terraform_labels" {
  description = "Map of terraform_labels values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no terraform_labels are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "dataproc_metastore_services_tier" {
  description = "Map of tier values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no tier are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.tier if v.tier != null && length(v.tier) > 0 }
}
output "dataproc_metastore_services_uid" {
  description = "Map of uid values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no uid are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "dataproc_metastore_services_update_time" {
  description = "Map of update_time values across all dataproc_metastore_services, keyed the same as var.dataproc_metastore_services except keys with no update_time are omitted"
  value       = { for k, v in google_dataproc_metastore_service.dataproc_metastore_services : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

