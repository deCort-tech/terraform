azuread_apps = {
  # Do not rename the key "launchpad" to be able to upgrade to the standard launchpad
  caf_launchpad_level0 = {
    useprefix               = true
    application_name        = "caf_launchpad_level0"
    password_expire_in_days = 180

    # Store the ${secret_prefix}-client-id, ${secret_prefix}-client-secret...
    # Set the policy during the creation process of the launchpad
    keyvaults = {
      level0 = {
        secret_prefix = "aadapp-caf-launchpad-level0"
      }
    }
  }

}