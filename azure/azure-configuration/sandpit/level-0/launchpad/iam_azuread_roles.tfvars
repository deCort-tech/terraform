azuread_roles = {
  azuread_apps = {
    caf_launchpad_level0 = {
      roles = [
        "Application Administrator",
        "Application Developer",
        "User Administrator"
      ]
    }
  }
  managed_identities = {
    level0 = {
      roles = [
        "Directory Readers",
        "Application Developer",
        "User Administrator"
      ]
    }
    level1 = {
      roles = [
        "Directory Readers"
      ]
    }
    level2 = {
      roles = [
        "Directory Readers"
      ]
    }
    level3 = {
      roles = [
        "Directory Readers"
      ]
    }
    level4 = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}