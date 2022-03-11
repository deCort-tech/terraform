landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level0"
  key                 = "azdo-agent-levels"
  tfstates = {
    launchpad = {
      level   = "current"
      tfstate = "caf_launchpad.tfstate"
    }
    decort_tech_azure_devops = {
      level   = "current"
      tfstate = "decort_tech_azure_devops.tfstate"
    }
    gitops_connectivity = {
      level   = "current"
      tfstate = "gitops_connectivity.tfstate"
    }
  }
}

resource_groups = {
  rg0 = {
    name = "devops-agents-level0"
  }
  rg1 = {
    name = "devops-agents-level1"
  }
  rg2 = {
    name = "devops-agents-level2"
  }
  rg3 = {
    name = "devops-agents-level3"
  }
  rg4 = {
    name = "devops-agents-level4"
  }
}