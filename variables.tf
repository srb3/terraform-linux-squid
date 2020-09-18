################ connection ###########################

variable "ips" {
  description = "A list of ips to install chef automate on"
  type        = list(string)
}

variable "instance_count" {
  description = "The number of automate instances being created"
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

variable "timeout" {
  description = "The timeout to wait for the connection to become available. Should be provided as a string like 30s or 5m. Defaults to 5 minutes."
  type        = string
  default     = "5m"
}

################# effortless settings ############

variable "squid_effortless_package" {
  description = "The name of the squid effortless package"
  type        = string
  default     = "srb3/squid_wrapper/4.3.1/20200917203555"
}


########### module dependencies ##################

variable "module_depends_on" {
  description = "List of modules or resources this module depends on"
  type        = list(any)
  default     = []
}
