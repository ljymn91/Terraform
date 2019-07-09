resource "azurerm_public_ip" "myterraformpublicipa" {
    name                         = "Team01PublicIPA"
    location                     = "Korea South"
    resource_group_name          = "${azurerm_resource_group.myterraformgroup.name}"
    allocation_method            = "Dynamic"
    tags = {
        environment = "Terraform Demo"
    }
}

resource "azurerm_public_ip" "myterraformpublicipb" {
    name                         = "Team01PublicIPB"
    location                     = "Korea South"
    resource_group_name          = "${azurerm_resource_group.myterraformgroup.name}"
    allocation_method            = "Dynamic"

    tags = {
        environment = "Terraform Demo"
    }
}
