#
# Define the settings for log analytics workspace and solution map
#
diagnostic_log_analytics = {
  l0_logs_region1 = {
    region             = "region1"
    name               = "logs"
    resource_group_key = "ops"
    # you can setup up to 5 key
    diagnostic_profiles = {
      l0_logs_region1 = {
        definition_key   = "log_analytics"
        destination_type = "log_analytics"
        destination_key  = "l0_logs"
      }
    }
    solutions_maps = {
      NetworkMonitoring = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/NetworkMonitoring"
      },
      AgentHealthAssessment = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/AgentHealthAssessment"
      },
      DnsAnalytics = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/DnsAnalytics"
      },
      KeyVaultAnalytics = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/KeyVaultAnalytics"
      }
    }
  }
}