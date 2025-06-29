resource "azurerm_subnet" "subnet" {
    for_each = var.subnet-ame
  name                 = each.value.subnet-name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.azurerm_virtual_network-name
  address_prefixes     = each.value.address_prefixes

}


