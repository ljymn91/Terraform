resource "azurerm_virtual_network" "myterraformnetwork" {
    name                = "Team01Vnet"
    address_space       = ["1.0.0.0/16"]
    location            = "Korea south"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"
    tags                = {
                          environment = "Terraform Demo"
    }
}
