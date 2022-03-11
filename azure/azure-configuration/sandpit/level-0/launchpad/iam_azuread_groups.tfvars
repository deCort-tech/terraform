azuread_groups = {
  keyvault_level0_rw = {
    name        = "caf-level0-keyvault-rw"
    description = "Provide read and write access to the keyvault secrets / level0."
    members = {
      user_principal_names = [
      ]
      group_names = []
      object_ids  = []
      group_keys  = []

      service_principal_keys = [
        "caf_launchpad_level0"
      ]

    }
    owners = {
      user_principal_names = [
      ]
      service_principal_keys = [
        "caf_launchpad_level0"
      ]
    }
    prevent_duplicate_name = false
  }

  keyvault_level1_rw = {
    name        = "caf-level1-landingzones-rw"
    description = "Provide read and write access to manage landingzones / level1."
    members = {
    }
    owners = {

    }
    prevent_duplicate_name = false
  }

  keyvault_level2_rw = {
    name        = "caf-level2-landingzones-rw"
    description = "Provide read and write access to manage landingzones / level2."
    members = {
    }
    owners = {

    }
    prevent_duplicate_name = false
  }

  keyvault_level3_rw = {
    name        = "caf-level3-landingzones-rw"
    description = "Provide read and write access to manage landingzones / level3."
    members = {
    }
    owners = {

    }
    prevent_duplicate_name = false
  }

  keyvault_level4_rw = {
    name        = "caf-level4-applications"
    description = "Provide read access to the applications who need to deploy on the level4."
    members = {
    }
    owners = {

    }
    prevent_duplicate_name = false
  }

  caf_launchpad_Reader = {
    name        = "caf-launchpad-Reader"
    description = "Provide Reader role to the caf launchpad landing zone resource groups."
    members = {
    }
    owners = {

    }
    prevent_duplicate_name = false
  }

  keyvault_password_rotation = {
    name        = "caf-level0-password-rotation-rw"
    description = "Provide read and write access to the keyvault secrets / level0."
    members = {
      user_principal_names = [
      ]
      group_names = []
      object_ids  = []
      group_keys  = []

      service_principal_keys = [
        "caf_launchpad_level0"
      ]

    }
    owners = {
      user_principal_names = [
      ]
      service_principal_keys = [
        "caf_launchpad_level0"
      ]
    }
    prevent_duplicate_name = false
  }
}