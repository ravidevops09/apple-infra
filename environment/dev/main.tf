module "rg" {
   source = "../../child_module/azurerm_resource_group"
    rgs = var.rgs
}

module "vnet"{
    depends_on = [ module.rg ]
    source = "../../child_module/azurerm_virtual_network"
    vnets = var.vnets

}

