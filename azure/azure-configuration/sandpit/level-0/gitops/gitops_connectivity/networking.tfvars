##################################################
#
# Networking resources
#
##################################################


public_ip_addresses = {
  bastion_host_rg1 = {
    name                    = "pip1"
    resource_group_key      = "networking"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"

    # you can setup up to 5 key
    diagnostic_profiles = {
      bastion_host_rg1 = {
        definition_key   = "public_ip_address"
        destination_type = "log_analytics"
        destination_key  = "l0_logs"
      }
    }

  }
}

vnets = {
  devops_region1 = {
    resource_group_key = "networking"
    region             = "region1"
    vnet = {
      name          = "devops"
      address_space = ["10.69.69.0/24"]
    }
    specialsubnets = {}
    subnets = {
      AzureBastionSubnet = {
        name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr    = ["10.69.69.24/29"]
        nsg_key = "azure_bastion_nsg"
      }
      jumpbox = {
        name              = "jumpbox"
        cidr              = ["10.69.69.32/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
      }
      release_agent_level0 = {
        name              = "level0"
        cidr              = ["10.69.69.40/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
      }
      release_agent_level1 = {
        name              = "level1"
        cidr              = ["10.69.69.48/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
      }
      release_agent_level2 = {
        name              = "level2"
        cidr              = ["10.69.69.56/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
      }
      release_agent_level3 = {
        name              = "level3"
        cidr              = ["10.69.69.64/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
      }
      release_agent_level4 = {
        name              = "level4"
        cidr              = ["10.69.69.72/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
      }
      private_endpoints = {
        name                                           = "private_endpoints"
        cidr                                           = ["10.69.69.128/25"]
        enforce_private_link_endpoint_network_policies = true
        nsg_key                                        = "empty_nsg"
      }
    }

    # you can setup up to 5 keys - vnet diganostic
    diagnostic_profiles = {
      vnet = {
        definition_key   = "l0_networking"
        destination_type = "log_analytics"
        destination_key  = "l0_logs"
      }
    }

  }
}

route_tables = {
  default_no_internet = {
    name               = "default_no_internet"
    resource_group_key = "networking"
  }
}

azurerm_routes = {
  no_internet = {
    name               = "no_internet"
    resource_group_key = "networking"
    route_table_key    = "default_no_internet"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "None"
  }
}