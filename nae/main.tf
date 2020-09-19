# Configure the Microsoft Azure Provider
provider "azurerm" { 
  features {}
  }

# Create a resource group 
data "azurerm_resource_group" "myterraformgroup" {
}

# Create virtual network
resource "azurerm_virtual_network" "myterraformnetwork" {
    name                = "myVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "eastus"
    resource_group_name = data.azurerm_resource_group.myterraformgroup.name

    tags = {
        environment = "Terraform Demo"
    }
}







   




