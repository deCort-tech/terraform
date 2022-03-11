landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level1"
  key                 = "monitoring"
  tfstates = {
    launchpad = {
      level   = "lower"
      tfstate = "caf_launchpad.tfstate"
    }
  }
}