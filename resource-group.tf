resource "azurerm_resource_group" "myTerraformGroup" {
  name     = var.resourceGroupName
  location = var.location
  tags= var.tags
}