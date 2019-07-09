resource "azurerm_subnet" "myterraformsubneta" {
    name                 = "Team01SubnetA"
    resource_group_name  = "${azurerm_resource_group.myterraformgroup.name}"
    virtual_network_name = "${azurerm_virtual_network.myterraformnetwork.name}"
    address_prefix       = "1.0.1.0/24"
}

resource "azurerm_subnet" "myterraformsubnetb" {
    name                 = "Team01SubnetB"
    resource_group_name  = "${azurerm_resource_group.myterraformgroup.name}"
    virtual_network_name = "${azurerm_virtual_network.myterraformnetwork.name}"
    address_prefix       = "1.0.2.0/24"
}
