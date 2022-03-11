# Defines the different destination for the different log profiles
# Different profiles to target different operational teams

diagnostics_destinations = {
  # Storage keys must reference the azure region name
  # For storage, reference "all_regions" and we will send the logs to the storage account
  # in the region of the deployment
  storage = {
    all_regions = {
      westeurope = {
        storage_account_key = "l0_siem_region1"
      }
      northeurope = {
        storage_account_key = "l0_siem_region2"
      }
    }
  }

  log_analytics = {
    l0_logs = {
      log_analytics_key              = "l0_logs_region1"
      log_analytics_destination_type = "Dedicated"
    }
  }

  event_hub_namespaces = {
    l0_logs = {
      event_hub_namespace_key = "l0_logs_region1"
    }
  }
}