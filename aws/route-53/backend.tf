terraform {
  backend "s3" {
    bucket                      = "terraform-state"
    key                         = "route-53"
    region                      = "eu-west-1"
    access_key                  = "a4520b05d1592e1214ce6334a5c81905"
    endpoint                    = "s3.decort.tech"
    force_path_style            = "true"
    skip_credentials_validation = "true"
  }
}
