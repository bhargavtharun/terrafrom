resource "azurerm_resource_group" "rg" {
  name     = "POC"
  location = "eastus"
}
resource "azurerm_public_ip" "pip" {
  for_each            = var.ips
  name                = each.value.ip_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  sku                 = each.value.sku
}