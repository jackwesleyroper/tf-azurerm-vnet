/**
  * ## Descriptions
  * 
  * Terraform module for the creation of a Virtual Network resource with an option to enable/disable DDoS Protection Plan on Virtual Network.
  *
  */

resource "azurerm_virtual_network" "vnet" {
  resource_group_name = var.resource_group_name
  location            = var.location

  name          = var.name
  address_space = var.address_space
  dns_servers   = var.dns_servers

  tags = var.tags


  dynamic "ddos_protection_plan" {
    for_each = var.is_ddos_enabled == true ? [1] : []

    content {
      id     = var.ddos_protection_plan_id
      enable = var.is_ddos_enabled
    }
  }
}