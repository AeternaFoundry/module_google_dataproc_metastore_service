resource "google_dataproc_metastore_service" "dataproc_metastore_services" {
  for_each = var.dataproc_metastore_services

  service_id          = each.value.service_id
  database_type       = each.value.database_type
  deletion_policy     = each.value.deletion_policy
  deletion_protection = each.value.deletion_protection
  labels              = each.value.labels
  location            = each.value.location
  network             = each.value.network
  port                = each.value.port
  project             = each.value.project
  release_channel     = each.value.release_channel
  tags                = each.value.tags
  tier                = each.value.tier

  dynamic "encryption_config" {
    for_each = each.value.encryption_config != null ? [each.value.encryption_config] : []
    content {
      kms_key = encryption_config.value.kms_key
    }
  }

  dynamic "hive_metastore_config" {
    for_each = each.value.hive_metastore_config != null ? [each.value.hive_metastore_config] : []
    content {
      dynamic "auxiliary_versions" {
        for_each = hive_metastore_config.value.auxiliary_versions != null ? hive_metastore_config.value.auxiliary_versions : []
        content {
          config_overrides = auxiliary_versions.value.config_overrides
          key              = auxiliary_versions.value.key
          version          = auxiliary_versions.value.version
        }
      }
      config_overrides  = hive_metastore_config.value.config_overrides
      endpoint_protocol = hive_metastore_config.value.endpoint_protocol
      dynamic "kerberos_config" {
        for_each = hive_metastore_config.value.kerberos_config != null ? [hive_metastore_config.value.kerberos_config] : []
        content {
          keytab {
            cloud_secret = kerberos_config.value.keytab.cloud_secret
          }
          krb5_config_gcs_uri = kerberos_config.value.krb5_config_gcs_uri
          principal           = kerberos_config.value.principal
        }
      }
      version = hive_metastore_config.value.version
    }
  }

  dynamic "maintenance_window" {
    for_each = each.value.maintenance_window != null ? [each.value.maintenance_window] : []
    content {
      day_of_week = maintenance_window.value.day_of_week
      hour_of_day = maintenance_window.value.hour_of_day
    }
  }

  dynamic "metadata_integration" {
    for_each = each.value.metadata_integration != null ? [each.value.metadata_integration] : []
    content {
      data_catalog_config {
        enabled = metadata_integration.value.data_catalog_config.enabled
      }
    }
  }

  dynamic "network_config" {
    for_each = each.value.network_config != null ? [each.value.network_config] : []
    content {
      dynamic "consumers" {
        for_each = network_config.value.consumers
        content {
          subnetwork = consumers.value.subnetwork
        }
      }
    }
  }

  dynamic "scaling_config" {
    for_each = each.value.scaling_config != null ? [each.value.scaling_config] : []
    content {
      dynamic "autoscaling_config" {
        for_each = scaling_config.value.autoscaling_config != null ? [scaling_config.value.autoscaling_config] : []
        content {
          autoscaling_enabled = autoscaling_config.value.autoscaling_enabled
          dynamic "limit_config" {
            for_each = autoscaling_config.value.limit_config != null ? [autoscaling_config.value.limit_config] : []
            content {
              max_scaling_factor = limit_config.value.max_scaling_factor
              min_scaling_factor = limit_config.value.min_scaling_factor
            }
          }
        }
      }
      instance_size  = scaling_config.value.instance_size
      scaling_factor = scaling_config.value.scaling_factor
    }
  }

  dynamic "scheduled_backup" {
    for_each = each.value.scheduled_backup != null ? [each.value.scheduled_backup] : []
    content {
      backup_location = scheduled_backup.value.backup_location
      cron_schedule   = scheduled_backup.value.cron_schedule
      enabled         = scheduled_backup.value.enabled
      time_zone       = scheduled_backup.value.time_zone
    }
  }

  dynamic "telemetry_config" {
    for_each = each.value.telemetry_config != null ? [each.value.telemetry_config] : []
    content {
      log_format = telemetry_config.value.log_format
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

