variable "dataproc_metastore_services" {
  description = <<EOT
Map of dataproc_metastore_services, attributes below
Required:
    - service_id
Optional:
    - database_type
    - deletion_policy
    - deletion_protection
    - labels
    - location
    - network
    - port
    - project
    - release_channel
    - tags
    - tier
    - encryption_config (block):
        - kms_key (required)
    - hive_metastore_config (block):
        - auxiliary_versions (optional, block):
            - config_overrides (optional)
            - key (required)
            - version (required)
        - config_overrides (optional)
        - endpoint_protocol (optional)
        - kerberos_config (optional, block):
            - keytab (required, block):
                - cloud_secret (required)
            - krb5_config_gcs_uri (required)
            - principal (required)
        - version (required)
    - maintenance_window (block):
        - day_of_week (required)
        - hour_of_day (required)
    - metadata_integration (block):
        - data_catalog_config (required, block):
            - enabled (required)
    - network_config (block):
        - consumers (required, block):
            - subnetwork (required)
    - scaling_config (block):
        - autoscaling_config (optional, block):
            - autoscaling_enabled (optional)
            - limit_config (optional, block):
                - max_scaling_factor (optional)
                - min_scaling_factor (optional)
        - instance_size (optional)
        - scaling_factor (optional)
    - scheduled_backup (block):
        - backup_location (required)
        - cron_schedule (optional)
        - enabled (optional)
        - time_zone (optional)
    - telemetry_config (block):
        - log_format (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    service_id          = string
    database_type       = optional(string)
    deletion_policy     = optional(string)
    deletion_protection = optional(bool)
    labels              = optional(map(string))
    location            = optional(string)
    network             = optional(string)
    port                = optional(number)
    project             = optional(string)
    release_channel     = optional(string)
    tags                = optional(map(string))
    tier                = optional(string)
    encryption_config = optional(object({
      kms_key = string
    }))
    hive_metastore_config = optional(object({
      auxiliary_versions = optional(list(object({
        config_overrides = optional(map(string))
        key              = string
        version          = string
      })))
      config_overrides  = optional(map(string))
      endpoint_protocol = optional(string)
      kerberos_config = optional(object({
        keytab = object({
          cloud_secret = string
        })
        krb5_config_gcs_uri = string
        principal           = string
      }))
      version = string
    }))
    maintenance_window = optional(object({
      day_of_week = string
      hour_of_day = number
    }))
    metadata_integration = optional(object({
      data_catalog_config = object({
        enabled = bool
      })
    }))
    network_config = optional(object({
      consumers = list(object({
        subnetwork = string
      }))
    }))
    scaling_config = optional(object({
      autoscaling_config = optional(object({
        autoscaling_enabled = optional(bool)
        limit_config = optional(object({
          max_scaling_factor = optional(number)
          min_scaling_factor = optional(number)
        }))
      }))
      instance_size  = optional(string)
      scaling_factor = optional(number)
    }))
    scheduled_backup = optional(object({
      backup_location = string
      cron_schedule   = optional(string)
      enabled         = optional(bool)
      time_zone       = optional(string)
    }))
    telemetry_config = optional(object({
      log_format = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dataproc_metastore_services : (
        v.network_config == null || (length(v.network_config.consumers) >= 1)
      )
    ])
    error_message = "Each consumers list must contain at least 1 items"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

