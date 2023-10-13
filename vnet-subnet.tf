resource "azurerm_virtual_network" "myTerraformVnet" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = azurerm_resource_group.myTerraformGroup.name
  address_space       = ["10.0.0.0/16"]
  tags = var.tags
}

## An association is needed to be created between NIC and NSG###
resource "azurerm_subnet" "myTerraformSubnet" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.myTerraformGroup.name
  virtual_network_name = azurerm_virtual_network.myTerraformVnet.name
  address_prefixes     = ["10.0.1.0/24"]
}