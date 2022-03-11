keyvaults = {
  devops = {
    name               = "devops"
    resource_group_key = "rg1"
    sku_name           = "standard"

    creation_policies = {
      keyvault_level0_rw = {
        # Reference a key to an azure ad group
        lz_key             = "launchpad"
        azuread_group_key  = "keyvault_level0_rw"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

    diagnostic_profiles = {
      operations = {
        definition_key   = "l0_default"
        destination_type = "log_analytics"
        destination_key  = "l0_logs"
      }
      siem = {
        definition_key   = "l0_siem"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
    }
  }
}

keyvault_access_policies_azuread_apps = {
  level0 = {
    caf_decort_tech = {
      keyvault_lz_key    = "launchpad"
      azuread_app_key    = "caf_decort_tech"
      secret_permissions = ["Get", "List"]
    }
  }
  level1 = {
    caf_decort_tech = {
      keyvault_lz_key    = "launchpad"
      azuread_app_key    = "caf_decort_tech"
      secret_permissions = ["Get", "List"]
    }
  }
  level2 = {
    caf_decort_tech = {
      keyvault_lz_key    = "launchpad"
      azuread_app_key    = "caf_decort_tech"
      secret_permissions = ["Get", "List"]
    }
  }
  level3 = {
    caf_decort_tech = {
      keyvault_lz_key    = "launchpad"
      azuread_app_key    = "caf_decort_tech"
      secret_permissions = ["Get", "List"]
    }
  }
  level4 = {
    caf_decort_tech = {
      keyvault_lz_key    = "launchpad"
      azuread_app_key    = "caf_decort_tech"
      secret_permissions = ["Get", "List"]
    }
  }
  diagnostic_profiles = {
    operations = {
      definition_key   = "l0_default"
      destination_type = "log_analytics"
      destination_key  = "l0_logs"
    }
    siem = {
      definition_key   = "l0_siem"
      destination_type = "storage"
      destination_key  = "all_regions"
    }
  }
}