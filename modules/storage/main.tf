resource "azurerm_storage_account" "storage" {
  name                     = "storagesecure"
  resource_group_name      = "storage-rg"
  location                 = "East US"
  account_tier             = "Premium"
  account_replication_type = "LRS"
}

resource "azurerm_backup_vault" "backup" {
  name                = "backup-vault-secure"
  location            = "East US"
  resource_group_name = "backup-rg"
}
