resource "azurerm_resource_group" "rg" {
    for_each = toset (var.rgname)
    # for_each = toset (["rg-ecom-dev-01", "rg-ecom-dev-02", "rg-ecom-dev-03"])
    name = each.key
    location = "East US"
  
}

variable "rgname" {
    description = "this rg is created for ecom"
    type = map(object({
      name = string
      list
    }))
    default = ["rg-ecom-dev-03", "rg-ecom-dev-04"]

  
}