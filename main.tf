locals {
  instance_count = var.instance_count
  dna = [
    for ip in var.ips :
    {
      "squid_wrapper" = {}
    }
  ]
}

module "squid" {
  source            = "srb3/effortless-bootstrap/chef"
  version           = "0.0.17"
  ips               = var.ips
  instance_count    = local.instance_count
  user_name         = var.ssh_user_name
  user_private_key  = var.ssh_user_private_key
  config            = local.dna
  effortless_pkg    = var.squid_effortless_package
  module_depends_on = var.module_depends_on
}
