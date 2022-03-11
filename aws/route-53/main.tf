provider "aws" {
  region = "eu-west-1"
}

module "zones" {
  source = "terraform-aws-modules/route53/aws//modules/zones"

  zones = {
    "decort.tech" = {
      comment = "deCort.tech Hosted Zone (Production)"
      tags = {
        env       = "prod"
        ManagedBy = "Terraform"
      }
    }
  }

}

module "records" {
  source = "terraform-aws-modules/route53/aws//modules/records"

  zone_name = keys(module.zones.this_route53_zone_zone_id)[0]

  records = [
    {
      name = ""
      type = "A"
      ttl  = "300"
      records = [
        "x.x.x.x"
      ]
    },
    {
      name = ""
      type = "CAA"
      ttl  = "300"
      records = [
        "0 issue 'letsencrypt.org'"
      ]

    }
  ]

  depends_on = [module.zones]
}