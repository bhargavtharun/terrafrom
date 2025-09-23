




resource "azurerm_resource_group" "rggroup" {
  name     = var.rg1
  location = var.location1
}

resource "azurerm_public_ip" "ipss" {
  for_each = var.public-ips
  name     = each.key
  location = each.value
  resource_group_name = azurerm_resource_group.rggroup.name
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}