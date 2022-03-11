# Event hub diagnostics
diagnostic_event_hub_namespaces = {
  l0_logs_region1 = {
    name               = "l0_logs"
    resource_group_key = "ops"
    sku                = "Standard"
    region             = "region1"

    diagnostic_profiles = {
      l0_logs_region1 = {
        definition_key   = "event_hub_namespace"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
    }
  }
}