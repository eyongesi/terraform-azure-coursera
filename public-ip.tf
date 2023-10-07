resource "azurerm_public_ip" "myTerraformIPaddress" {
  name                = var.ipaddressname
  resource_group_name = azurerm_resource_group.myTerraformGroup.name
  location            = var.location
  allocation_method   = "Dynamic"

  tags = var.tags
}