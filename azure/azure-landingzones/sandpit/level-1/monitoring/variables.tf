variable "lower_storage_account_name" {
  default = null
}
variable "lower_container_name" {
  default = null
}
variable "lower_resource_group_name" {
  default = null
}

variable "tfstate_storage_account_name" {
  default = null
}
variable "tfstate_container_name" {
  default = null
}
variable "tfstate_key" {
  default = null
}
variable "tfstate_resource_group_name" {
  default = null
}

variable "tfstate_subscription_id" {
  default = null
}

variable "global_settings" {
  default = {}
}
variable "tenant_id" {
  default = null
}
variable "landingzone" {
}
variable "log_analytics" {
  default = {}
}
variable "event_hub_namespaces" {
  default = {}
}
variable "storage_accounts" {}
variable "diagnostics" {
  default = {}
}

variable "diagnostics_definition" {
  default = {}
}

variable "diagnostics_destinations" {
  default = {}
}

variable "diagnostic_event_hub_namespaces" {
  default = {}
}

variable "diagnostic_log_analytics" {
  default = {}
}

variable "diagnostic_storage_accounts" {
  default = {}
}
