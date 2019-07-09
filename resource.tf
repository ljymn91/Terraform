resource "azurerm_resource_group" "myterraformgroup" {

    name     = "Team01ResourceGroup"
    location = "Korea South"
    tags     = {
        environment = "Team01Terraform Demo"
    }
}
