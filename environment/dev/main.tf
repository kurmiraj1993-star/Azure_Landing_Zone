module "rk-rg" {
  source = "../../module/resource_group"
  rgs    = var.rgs
}
module "rk-vnet" {
  depends_on = [module.rk-rg]
  source     = "../../module/virtual_network"
  vnet       = var.vnet
}
module "rk-subnet" {
  depends_on = [module.rk-vnet]
  source     = "../../module/subnet"
  subnet     = var.subnet
}
module "rk-publicip" {
  depends_on = [ module.rk-rg ]
  source = "../../module/public_ip"
  pip = var.pip
}

module "rk-nic" {
  depends_on = [ module.rk-subnet, module.rk-publicip ]
  source = "../../module/azurerm_nic_card"
  vmnic = var.vmnic
}

module "rk-vm" {
  depends_on = [ module.rk-subnet, module.rk-nic ]
  source = "../../module/virture_machine"
  linuxvm = var.linuxvm
}

