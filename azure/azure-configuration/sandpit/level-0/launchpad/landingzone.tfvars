# Define landingzone configuration and tf_state backendtype
landingzone = {
  backend_type = "azurerm"
  level        = "level0"
  key          = "launchpad"
}

# Enable bastian and VM's for Gitops management
enable = {
  bastion_hosts    = true
  virtual_machines = true
}

# Define azure regions
default_region = "region1"

regions = {
  region1 = "westeurope"
  region2 = "northeurope"
}

# core tags to be applied accross this landing zone
tags = {
  owner          = "deCort.tech"
  deploymentType = "Terraform"
  costCenter     = "0"
  BusinessUnit   = "SharedServices"
  DR             = "NON-DR-ENABLED"
}

# all resources deployed will inherit tags from the parent resource group
inherit_tags = true

# Define AzureAD Application and the different tfstates used by the different launchpad levels
launchpad_key_names = {
  azuread_app            = "caf_launchpad_level0"
  keyvault_client_secret = "aadapp-caf-launchpad-level0"
  tfstates = [
    "level0",
    "level1",
    "level2",
    "level3",
    "level4"
  ]
}

# Define resource groups used by the different launchpad levels
resource_groups = {
  level0 = {
    name = "launchpad-level0"
    tags = {
      level = "level0"
    }
  }
  level1 = {
    name = "launchpad-level1"
    tags = {
      level = "level1"
    }
  }
  level2 = {
    name = "launchpad-level2"
    tags = {
      level = "level2"
    }
  }
  level3 = {
    name = "launchpad-level3"
    tags = {
      level = "level3"
    }
  }
  level4 = {
    name = "launchpad-level4"
    tags = {
      level = "level4"
    }
  }
  security = {
    name = "launchpad-security"
  }
  ops = {
    name = "l0-operations"
  }
  siem = {
    name = "l0-siem-logs"
  }
}


