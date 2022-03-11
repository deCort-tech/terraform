landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level0"
  key                 = "gitops_connectivity"
  tfstates = {
    launchpad = {
      level   = "current"
      tfstate = "caf_launchpad.tfstate"
    }
  }
}

resource_groups = {
  networking = {
    name = "devops-networking"
  }
  bastion_launchpad = {
    name = "devops-bastion"
  }
}