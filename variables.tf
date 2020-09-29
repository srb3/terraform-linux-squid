################ connection ###########################

variable "ip" {
  description = "An ip address to install squid on"
  type        = string
}

variable "ssh_user_name" {
  description = "The ssh user name used to access the ip addresses provided"
  type        = string
}

variable "ssh_user_private_key" {
  description = "The ssh user key used to access the ip addresses (either ssh_user_pass or ssh_user_private_key needs to be set)"
  type        = string
  default     = ""
}

variable "ssl_ports" {
  description = "The ports to include as ssl_ports in the squid config"
  type        = list(string)
  default     = ["443", "563", "873"]
}

variable "safe_ports" {
  description = "The ports to include as safe_ports in the squid config"
  type        = list(string)
  default     = ["80", "21", "443", "70", "210", "1025-65535", "280", "488", "591", "777", "631", "873", "901"]
}

variable "localnets" {
  description = "A list of network cidrs to include as localnets in the squid config"
  type        = list(string)
  default     = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16", "fc00::/7", "fe80::/10"]
}

variable "timeout" {
  description = "The timeout to wait for the connection to become available. Should be provided as a string like 30s or 5m. Defaults to 5 minutes."
  type        = string
  default     = "5m"
}

################# effortless settings ############

variable "squid_effortless_package" {
  description = "The name of the squid effortless package"
  type        = string
  default     = "srb3/squid_wrapper/4.3.1/20200921140857"
}
