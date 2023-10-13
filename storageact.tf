
## storage account name should be unique. ##
resource "azurerm_storage_account" "eyongesistorageact100" {
  name                     = var.storageact
  resource_group_name      = azurerm_resource_group.myTerraformGroup.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags =var.tags
}