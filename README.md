# Overview
This module installs, configures and runs a squid proxy. Chef Habitat and Chef Cookbooks are used to handle the deployment. 

#### Supported platform families:
 * Most Linux OS's


#### Terraform Version
This module should work with versions 0.12.x and 0.13.x of terraform
## Usage

#### minimal:
```hcl

module "squid" {
  source           = "srb3/squid/linux"
  version          = "0.13.0"
  ips              = ["198.51.100.1"]
  instance_count   = 1
  user_name        = "centos" # for ssh
  user_private_key = "~/.ssh/id_rsa"
}
```
