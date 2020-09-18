# Overview
This module installs, configures and runs a squid proxy. Chef Habitat and Chef Cookbooks are used to handle the deployment. 

#### Supported platform families:
 * Most Linux OS's

## Usage

#### minimal:
```hcl

module "squid" {
  source           = "srb3/squid/linux"
  version          = "0.0.1"
  ips              = ["198.51.100.1"]
  instance_count   = 1
  user_name        = "centos" # for ssh
  user_private_key = "~/.ssh/id_rsa"
}
```
