azure_devops = {
  level0 = {
    # Rover version to apply to the devops self-hosted agents during the setup.
    rover_version = "aztfmod/rover:0.14.11-2104.2711"
    url           = "https://dev.azure.com/update_with_your_org/"

    pats = {
      agent = {
        secret_name  = "azdo-pat-agent"
        keyvault_key = "secrets"
        lz_key       = "launchpad"
      }
    }

    agent_pool = {
      name              = "caf-sandpit-level0"
      auto_provision    = true
      num_agents        = 4
      agent_name_prefix = "agent"
    }
  }
  level1 = {
    url           = "https://dev.azure.com/update_with_your_org/"
    rover_version = "aztfmod/rover:0.14.11-2104.2711"

    pats = {
      agent = {
        secret_name  = "azdo-pat-agent"
        keyvault_key = "secrets"
        lz_key       = "launchpad"
      }
    }

    agent_pool = {
      name              = "caf-sandpit-level1"
      auto_provision    = true
      num_agents        = 4
      agent_name_prefix = "agent"
    }
  }
  level2 = {
    url           = "https://dev.azure.com/update_with_your_org/"
    rover_version = "aztfmod/rover:0.14.11-2104.2711"

    pats = {
      agent = {
        secret_name  = "azdo-pat-agent"
        keyvault_key = "secrets"
        lz_key       = "launchpad"
      }
    }

    agent_pool = {
      name              = "caf-sandpit-level2"
      auto_provision    = true
      num_agents        = 4
      agent_name_prefix = "agent"
    }
  }
  level3 = {
    url           = "https://dev.azure.com/update_with_your_org/"
    rover_version = "aztfmod/rover:0.14.11-2104.2711"

    pats = {
      agent = {
        secret_name  = "azdo-pat-agent"
        keyvault_key = "secrets"
        lz_key       = "launchpad"
      }
    }

    agent_pool = {
      name              = "caf-sandpit-level3"
      auto_provision    = true
      num_agents        = 4
      agent_name_prefix = "agent"
    }
  }
  level4 = {
    url           = "https://dev.azure.com/update_with_your_org/"
    rover_version = "aztfmod/rover:0.14.11-2104.2711"

    pats = {
      agent = {
        secret_name  = "azdo-pat-agent"
        keyvault_key = "secrets"
        lz_key       = "launchpad"
      }
    }

    agent_pool = {
      name              = "caf-sandpit-level4"
      auto_provision    = true
      num_agents        = 4
      agent_name_prefix = "agent"
    }
  }

}