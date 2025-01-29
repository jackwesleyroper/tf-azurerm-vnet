variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in which to create the Virtual Network and DDoS Plan (if enabled)."
}

variable "location" {
  type        = string
  description = "The location/region where the resources will be created."
}

variable "name" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used in the Virtual Network. You can supply multiple."
}

variable "dns_servers" {
  type        = list(string)
  description = "Azure Network DNS addresses. If no values are specified this will default to Azure DNS."
  default     = null
}

variable "is_ddos_enabled" {
  type        = bool
  description = "Enable/disable DDoS Protection Plan on the VNET."
  default     = false
}

variable "ddos_protection_plan_id" {
  type        = string
  description = "The ID of DDoS Protection Plan."
  default     = ""
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resources."
  default = {
    "key" = "value"
  }
}
