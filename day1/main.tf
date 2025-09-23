

resource "azurerm_resource_group" "RG" {
  name     = var.rg-name
  location = var.location
}
resource "azurerm_resource_group" "RG1" {
  name     = "POCb"
  location = var.location
}
resource "azurerm_public_ip" "p-ip" {
  count = length(var.ips)
  name = var.ips[count.index]
  resource_group_name = azurerm_resource_group.RG1.name
  location            = azurerm_resource_group.RG1.location
  allocation_method   = "Static"
}


