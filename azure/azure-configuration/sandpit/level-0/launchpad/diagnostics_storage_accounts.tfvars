# Defines different repositories for the diagnostics logs
# Storage accounts, log analytics, event hubs for level 0 launchpad so it can be self contained

diagnostic_storage_accounts = {
  # Stores diagnostic logging for region1
  l0_diaglogs_region1 = {
    name                     = "l0_diaglogsrg1"
    region                   = "region1"
    resource_group_key       = "ops"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"
  }
  # Stores diagnostic logging for region2
  l0_diaglogs_region2 = {
    name                     = "l0_diaglogrg2"
    region                   = "region2"
    resource_group_key       = "ops"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"
  }
  # Stores security logs for siem region1
  l0_siem_region1 = {
    name                     = "l0_siemrg1"
    region                   = "region1"
    resource_group_key       = "siem"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"
  }
  # Stores security logs for siem region2
  l0_siem_region2 = {
    name                     = "l0_siemrg2"
    region                   = "region2"
    resource_group_key       = "siem"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"
  }
  # Stores boot diagnostic for region1
  l0_bootdiag_region1 = {
    name                     = "l0_bootrg1"
    region                   = "region1"
    resource_group_key       = "ops"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"
  }
  # Stores boot diagnostic for region2
  l0_bootdiag_region2 = {
    name                     = "l0_bootrg2"
    region                   = "region2"
    resource_group_key       = "ops"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"
  }
}