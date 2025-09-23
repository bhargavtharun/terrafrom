output "rg-id" {
    
    value = azurerm_resource_group.rggroup["rg1"].id
  
}

output "rg22" {
    value = azurerm_resource_group.rggroup["rg2"].id
  
}