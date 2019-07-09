resource "azurerm_virtual_machine" "myterraformdbvm" {
    name                  = "Team01DBVM"
    location              = "Korea south"
    resource_group_name   = "${azurerm_resource_group.myterraformgroup.name}"
    network_interface_ids = ["${azurerm_network_interface.myterraformnicb.id}"]
    vm_size               = "Standard_D2_v3"

    storage_os_disk {
        name              = "Team01DBOsDisk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Standard_LRS"
    }

    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04.0-LTS"
        version   = "latest"

    }

    os_profile {
        computer_name  = "Team01DBvm"
        admin_username = "user09"
        admin_password = "SKCNC!23"
    }

    os_profile_linux_config {
        disable_password_authentication = true
        ssh_keys {

            path     = "/home/user09/.ssh/authorized_keys"
            key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBCS1H2TonA5kO+zjWQExS6ZC9kxaSchczt67j+Gg4aR1pp3OH6H5+x7MT7oxWLAMwCEnTOWfpjYagNeDQSJnq+f5ZM0AnPjwoEWjU3JLukp9uZdPMRRKeXJ4Hyoj94GsRj+j8+bvG/jObot9H0v/CI5fPYvGPuSAx7fKJ+sLuKOKNnZy9FV51kPa/5Eh6lfdwdp6dbDz06AQU6pXSmCgMvt2V9nGrVAYeRpJG15AHY94nQ114PfZdeeXJr1AGRbWsZ54Xlq0FkIoBWT1LZmSkFsu0I0WITB0agT4nnpAoI6yWZPFkrqR4irIlI+rgmMunaFh9yCazvDyfnfgU+Vu5 user09@cc-f144a594-655bc94fcd-mkglz"
        }
    }

    boot_diagnostics {
        enabled     = "true"
        storage_uri = "${azurerm_storage_account.mystorageaccount.primary_blob_endpoint}"
    }
    tags = {
        environment = "Terraform Demo"
    }
}
