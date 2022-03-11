module "launchpad" {
  source  = "aztfmod/caf/azurerm"
  version = "~>5.4.2"

  current_landingzone_key = var.landingzone.key
  log_analytics           = var.log_analytics
  global_settings         = var.global_settings
  storage_accounts        = var.storage_accounts
  subscriptions           = var.subscriptions
  tags                    = var.tags
  tenant_id               = var.tenant_id
  user_type               = var.user_type

  diagnostics = {
    diagnostics_definition          = try(var.diagnostics.diagnostics_definition, var.diagnostics_definition)
    diagnostics_destinations        = try(var.diagnostics.diagnostics_destinations, var.diagnostics_destinations)
    diagnostic_event_hub_namespaces = try(var.diagnostics.diagnostic_event_hub_namespaces, var.diagnostic_event_hub_namespaces)
    diagnostic_log_analytics        = try(var.diagnostics.diagnostic_log_analytics, var.diagnostic_log_analytics)
    diagnostic_storage_accounts     = try(var.diagnostics.diagnostic_storage_accounts, var.diagnostic_storage_accounts)
  }
}
