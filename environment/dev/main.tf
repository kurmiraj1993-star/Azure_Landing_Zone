module "rk-rg" {
    source = "../../module/resource_group"
    rgs=var.rgs
}
module "rk-vnet" {
    depends_on = [ module.rk-rg ]
    source = "../../module/virtual_network"
  vnet=var.vnet
}