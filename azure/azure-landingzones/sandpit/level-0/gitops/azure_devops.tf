# The PAT token must be provisioned in a different deployment
provider "azuredevops" {
  org_service_url       = var.azure_devops.url
  personal_access_token = var.azdo_pat_admin == null
}