role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      networking = {
        "Reader" = {
          azuread_groups = {
            lz_key = "launchpad"
            keys   = ["caf_launchpad_Reader"]
          }
        }
      }
    }
  }
}