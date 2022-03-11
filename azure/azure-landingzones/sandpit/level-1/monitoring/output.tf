output "diagnostics" {
  value     = module.launchpad.diagnostics
  sensitive = true
}

output "tfstates" {
  value     = local.tfstates
  sensitive = true
}