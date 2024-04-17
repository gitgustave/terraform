locals {
  #name = "LocalNmame"
  tags = {
    environment = "test"
    owner = "Gustave H"
  }
}


resource "azurerm_resource_group" "resourcegroup" {
  name = var.rsgname
  location =  var.location
  tags =  local.tags
}

resource "azurerm_storage_account" "ghstorageaccount" {
  name                     = var.StrgAccName
  resource_group_name      = azurerm_resource_group.resourcegroup.name
  location                 = azurerm_resource_group.resourcegroup.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags =  local.tags
}