output "azure_devops" {
  value = var.azure_devops
}

output "agent_pools" {
  value = azuredevops_agent_pool.pool
}