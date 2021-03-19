provider "azurerm" {
version = "~>2.0"
features {}
}

resource "azurerm_resource_group" "example" {
name = "newrg"
location = "eastus"
}

resource "azurerm_storage_account" "example" {
name = "pravalikastorgrs1234"
resource_group_name = azurerm_resource_group.example.name
location = "eastus"
account_tier = "Standard"
account_replication_type = "GRS"
}
