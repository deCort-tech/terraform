role_mapping = {
  built_in_role_mapping = {
    storage_accounts = {
      scripts_region1 = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            lz_key = "launchpad"
            keys   = ["keyvault_level0_rw"]
          }
          managed_identities = {
            lz_key = "launchpad"
            keys   = ["level0", "level1", "level2", "level3", "level4", ]
          }
          logged_in = {
            keys = ["user"]
          }
        }
      }
    }
  }
}