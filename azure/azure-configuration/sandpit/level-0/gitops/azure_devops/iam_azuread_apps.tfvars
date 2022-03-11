azuread_apps = {

  caf_decort_tech = {
    useprefix               = true
    application_name        = "caf-level4-decort-tech"
    password_expire_in_days = 60
    tenant_name             = "decorttech.onmicrosoft.com"
    keyvaults = {
      devops = {
        secret_prefix = "aadapp-caf-launchpad-level0"
      }
    }
  }

}