azure_devops = {

  url     = "https://dev.azure.com/simacsupport/"
  project = "Operations-Playground"

  # PAT Token should be updated manually to the keyvault after running launchpad
  pats = {
    admin = {
      secret_name  = "azdo-pat-admin"
      lz_key       = "launchpad"
      keyvault_key = "secrets"
    }
  }

  organization_agent_pools = {
    level0 = {
      name           = "caf-sandpit-level0"
      auto_provision = false # When set to false the agent pool is not populated automatically into the devops projects (recommended)
    }
    level1 = {
      name           = "caf-sandpit-level1"
      auto_provision = false
    }
    level2 = {
      name           = "caf-sandpit-level2"
      auto_provision = false
    }
    level3 = {
      name           = "caf-sandpit-level3"
      auto_provision = false
    }
    level4 = {
      name           = "caf-sandpit-level4"
      auto_provision = false
    }
  }

  project_agent_pools = {
    level0 = {
      name = "caf-sandpit-level0"
    }
    level1 = {
      name = "caf-sandpit-level1"
    }
    level2 = {
      name = "caf-sandpit-level2"
    }
    level3 = {
      name = "caf-sandpit-level3"
    }
    level4 = {
      name = "caf-sandpit-level4"
    }
  }

  service_endpoints = {
    caf_decort_tech = {
      endpoint_name       = "caf_decort_tech_ep"
      subscription_name   = "Visual Studio Enterprise Subscription – MPN"
      subscription_id     = "3987aeba-6ade-4ff7-b317-6c3b374321a9"
      aad_app_key         = "caf_decort_tech"
      secret_keyvault_key = "devops"
    }
  }

  variable_groups = {
    global = {
      name         = "release-global" # changing that name requires to change it in the devops agents yaml variables group
      allow_access = true
      variables = {
        HOME_FOLDER_USER    = "vsts_azpcontainer"
        ROVER_IMAGE         = "aztfmod/rover:0.14.11-2104.2711"
        ROVER_RUNNER        = "true"
        TF_CLI_ARGS         = "'-no-color'"
        TF_CLI_ARGS_init    = ""
        TF_CLI_ARGS_plan    = "'-input=false'"
        TF_VAR_ARGS_destroy = "'-auto-approve -refresh=false'"
        ENVIRONMENT         = "sandpit"
        LANDINGZONE_BRANCH  = "master"
      }
    }

    level0 = {
      name         = "release-level0"
      allow_access = true
      variables = {
        TF_VAR_pipeline_level = "level0"
        ARM_USE_MSI           = "true"
        AGENT_POOL            = "caf-sandpit-level0"
      }
    }

    level0_kv = {
      name         = "release-level0-msi"
      allow_access = true
      keyvault = {
        lz_key              = "launchpad"
        keyvault_key        = "level0"
        serviceendpoint_key = "caf_decort_tech"
      }
      variables = {
        name = "msi-resource-id"
      }
    }

    level1 = {
      name         = "release-level1"
      allow_access = true
      variables = {
        TF_VAR_pipeline_level = "level1"
        ARM_USE_MSI           = "true"
        AGENT_POOL            = "caf-sandpit-level1"
      }
    }

    level1_kv = {
      name         = "release-level1-msi"
      allow_access = true
      keyvault = {
        lz_key              = "launchpad"
        keyvault_key        = "level1"
        serviceendpoint_key = "caf_decort_tech"
      }
      variables = {
        name = "msi-resource-id"
      }
    }

    level2 = {
      name         = "release-level2"
      allow_access = true
      variables = {
        TF_VAR_pipeline_level = "level2"
        ARM_USE_MSI           = "true"
        AGENT_POOL            = "caf-sandpit-level2"
      }
    }

    level2_kv = {
      name         = "release-level2-msi"
      allow_access = true
      keyvault = {
        lz_key              = "launchpad"
        keyvault_key        = "level2"
        serviceendpoint_key = "caf_decort_tech"
      }
      variables = {
        name = "msi-resource-id"
      }
    }

    level3 = {
      name         = "release-level3"
      allow_access = true
      variables = {
        TF_VAR_pipeline_level = "level3"
        ARM_USE_MSI           = "true"
        AGENT_POOL            = "caf-sandpit-level3"
      }
    }

    level3_kv = {
      name         = "release-level3-msi"
      allow_access = true
      keyvault = {
        lz_key              = "launchpad"
        keyvault_key        = "level3"
        serviceendpoint_key = "caf_decort_tech"
      }
      variables = {
        name = "msi-resource-id"
      }
    }

    level4 = {
      name         = "release-level4"
      allow_access = true
      variables = {
        TF_VAR_pipeline_level = "level4"
        ARM_USE_MSI           = "true"
        AGENT_POOL            = "caf-sandpit-level4"
      }
    }

    level4_kv = {
      name         = "release-level4-msi"
      allow_access = true
      keyvault = {
        lz_key              = "launchpad"
        keyvault_key        = "level4"
        serviceendpoint_key = "caf_decort_tech"
      }
      variables = {
        name = "msi-resource-id"
      }
    }
  }

  pipelines = {
    #
    # LANDING ZONES PIPELINES
    # Level 1 - CAF Foundations
    #
    #caf_foundations_plan = {
    #  name          = "caf_foundations_plan"
    #  folder        = "\\configuration\\level1"
    #  yaml          = "configuration/sandpit/pipelines/rover.yaml"
    #  repo_type     = "TfsGit"
    #  git_repo_name = "caf-configuration"
    #  variables = {
    #    landingZoneName = "caf_foundations",
    #    terraformAction = "plan",
    #    tfstateName     = "caf_foundations.tfstate"
    #    configPath      = "/configuration/sandpit/level1/foundations"
    #    landingZonePath = "/public/caf_solution"
    #    level           = "level1"
    #  }
    #  variable_group_keys = ["global", "level1", "level1_kv"]
    #}
    #caf_foundations_apply = {
    #  name          = "caf_foundations_apply"
    #  folder        = "\\configuration\\level1"
    #  yaml          = "configuration/sandpit/pipelines/rover.yaml"
    #  repo_type     = "TfsGit"
    #  git_repo_name = "caf-configuration"
    #  variables = {
    #    pool            = "level0"
    #    landingZoneName = "caf_foundations",
    #    terraformAction = "apply",
    #    tfstateName     = "caf_foundations.tfstate"
    #    configPath      = "/configuration/sandpit/level1/foundations"
    #    landingZonePath = "/public/caf_solution"
    #    level           = "level1"
    #  }
    #  variable_group_keys = ["global", "level1", "level1_kv"]
    #}
    #caf_foundations_destroy = {
    #  name          = "caf_foundations_destroy"
    #  folder        = "\\configuration\\level1"
    #  yaml          = "configuration/sandpit/pipelines/rover.yaml"
    #  repo_type     = "TfsGit"
    #  git_repo_name = "caf-configuration"
    #  variables = {
    #    landingZoneName = "caf_foundations",
    #    terraformAction = "destroy",
    #    tfstateName     = "caf_foundations.tfstate"
    #    configPath      = "/configuration/sandpit/level1/foundations"
    #    landingZonePath = "/public/caf_solution"
    #    level           = "level1"
    #  }
    #  variable_group_keys = ["global", "level1", "level1_kv"]
    #}
  }
}