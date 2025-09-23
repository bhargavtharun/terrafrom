resource "azurerm_resource_group" "rggroup" {
  for_each = var.rgs
  name     = each.key
  location = each.value
}