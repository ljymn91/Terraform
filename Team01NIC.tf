resource "azurerm_network_interface" "myterraformnica" {
    name                = "Team01NIC_Web"
    location            = "Korea South"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"
    network_security_group_id = "${azurerm_network_security_group.myterraformnsga.id}"

    ip_configuration {
        name                          = "Team01NicConfigurationA"
        subnet_id                     = "${azurerm_subnet.myterraformsubneta.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.myterraformpublicipa.id}"
    }
    tags                              = {
        environment = "Terraform Demo"
    }
}

resource "azurerm_network_interface" "myterraformnicb" {
    name                = "Team01NIC_DB"
    location            = "Korea South"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"
    network_security_group_id = "${azurerm_network_security_group.myterraformnsgb.id}"

    ip_configuration {
        name                          = "Team01NicConfigurationB"
        subnet_id                     = "${azurerm_subnet.myterraformsubnetb.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.myterraformpublicipb.id}"
    }
    tags                              = {
        environment = "Terraform Demo"
    }
}


