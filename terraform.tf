#Configure Azure provider

provider "azurerm" {

    version = "=2.0.0"
    features {}
}




resource "azuread_group" "my_group" {
  name = "MyGroup"
}