azuread_users = {

  # don't change that key
  aad-user-devops-user-admin = {
    useprefix               = true
    user_name               = "caf-level0-security-devops-pat-rotation"
    password_expire_in_days = 180

    # Value must match with var.keyvaults[keyname] to store username and password for password rotation
    keyvault_key = "secrets"
  }

}