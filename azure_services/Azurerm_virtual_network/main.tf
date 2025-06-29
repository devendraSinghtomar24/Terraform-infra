resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnet
  name                = each.value.vnet-name
  location            = each.value.location
  resource_group_name = each.value.rgname
  address_space       = each.value.address_space

}