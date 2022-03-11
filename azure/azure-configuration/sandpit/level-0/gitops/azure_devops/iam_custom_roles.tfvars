custom_role_definitions = {

  caf-azdo-to-azure-subscription = {
    name        = "caf-azure-devops-TO-azure-subscription"
    useprefix   = true
    description = "CAF Custom role for service principal in Azure Devops to access resources"
    permissions = {
      actions = [
        "Microsoft.Resources/subscriptions/read",
        "Microsoft.KeyVault/vaults/read"
      ]
    }
  }

}