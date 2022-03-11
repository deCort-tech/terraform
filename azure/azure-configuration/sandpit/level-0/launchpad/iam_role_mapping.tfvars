
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#
role_mapping = {
  ## Mapping of the custom caf-launchpad-contributor role
  custom_role_mapping = {
    subscriptions = {
      logged_in_subscription = {
        "caf-launchpad-contributor" = {
          azuread_groups = {
            keys = ["keyvault_level0_rw", "keyvault_level1_rw", "keyvault_level2_rw", "keyvault_level3_rw", "keyvault_level4_rw", ]
          }
          managed_identities = {
            keys = ["level0", "level1", "level2", "level3", "level4"]
          }
          azuread_apps = {
            keys = ["caf_launchpad_level0"]
          }
        }
      }
    }
  }

  built_in_role_mapping = {
    ## Mapping of built in roles
    subscriptions = {
      logged_in_subscription = {
        "Contributor" = {
          azuread_apps = {
            keys = ["caf_launchpad_level0"]
          }
          managed_identities = {
            keys = ["level0", "level1", "level2", "level3", "level4"]
          }
        }
      }
    }
    resource_groups = {
      level0 = {
        "Reader" = {
          azuread_groups = {
            keys = ["caf_launchpad_Reader"]
          }
        }
      }
      security = {
        "Reader" = {
          azuread_groups = {
            keys = ["caf_launchpad_Reader"]
          }
        }
      }
      ops = {
        "Reader" = {
          azuread_groups = {
            keys = ["caf_launchpad_Reader"]
          }
        }
      }
      siem = {
        "Reader" = {
          azuread_groups = {
            keys = ["caf_launchpad_Reader"]
          }
        }
      }
    }
    storage_accounts = {
      level0 = {
        ## Define who is allowed to wite to level0 storage account
        "Storage Blob Data Contributor" = {
          logged_in = {
            keys = ["user"]
          }
          azuread_groups = {
            keys = ["keyvault_level0_rw"]
          }
          azuread_apps = {
            keys = ["caf_launchpad_level0"]
          }
          managed_identities = {
            keys = ["level0"]
          }
        }
        ## Allow level1 to read tfstate level0
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["keyvault_level1_rw"]
          }
        }
      }
      level1 = {
        ## Define who is allowed to wite to level1 storage account
        "Storage Blob Data Contributor" = {
          logged_in = {
            keys = ["user"]
          }
          azuread_groups = {
            keys = ["keyvault_level1_rw"]
          }
          managed_identities = {
            keys = ["level0", "level1"]
          }
        }
        ## Allow level2 to read tfstate level1
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["keyvault_level2_rw"]
          }
        }
      }
      level2 = {
        ## Define who is allowed to wite to level2 storage account
        "Storage Blob Data Contributor" = {
          logged_in = {
            keys = ["user"]
          }
          azuread_groups = {
            keys = ["keyvault_level2_rw"]
          }
          managed_identities = {
            keys = ["level0", "level2"]
          }
        }
        ## Allow level3 to read tfstate level2
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["keyvault_level3_rw"]
          }
        }
      }
      level3 = {
        ## Define who is allowed to wite to level3 storage account
        "Storage Blob Data Contributor" = {
          logged_in = {
            keys = ["user"]
          }
          azuread_groups = {
            keys = ["keyvault_level3_rw"]
          }
          managed_identities = {
            keys = ["level0", "level3"]
          }
        }
        ## Allow level4 to read tfstate level3
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["keyvault_level4_rw"]
          }
        }
      }
      level4 = {
        ## Define who is allowed to wite to level4 storage account
        "Storage Blob Data Contributor" = {
          logged_in = {
            keys = ["user"]
          }
          azuread_groups = {
            keys = ["keyvault_level4_rw"]
          }
          managed_identities = {
            keys = ["level0", "level4"]
          }
        }
        ## No additional groups get reader role on level4 storage account
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["keyvault_level4_rw"]
          }
        }
      }
    }
  }

}