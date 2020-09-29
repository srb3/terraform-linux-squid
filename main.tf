locals {
  dna = {
    "squid" = {
      "ssl_ports"  = var.ssl_ports,
      "safe_ports" = var.safe_ports,
      "localnets" = var.localnets
    }
  }
}

module "squid" {
  source            = "srb3/effortless-bootstrap/chef"
  version           = "0.13.1"
  ip                = var.ip
  user_name         = var.ssh_user_name
  user_private_key  = var.ssh_user_private_key
  config            = local.dna
  effortless_pkg    = var.squid_effortless_package
}
