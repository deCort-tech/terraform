landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level0"
  key                 = "decort_tech_azure_devops"
  tfstates = {
    launchpad = {
      level   = "current"
      tfstate = "caf_launchpad.tfstate"
    }
  }
}

resource_groups = {
  rg1 = {
    name = "devops-agents-security"
  }
}

