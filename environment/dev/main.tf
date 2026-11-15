module "rk-rg" {
    source = "../../module/resource_group"
    rgs=var.rgs
}
module "rk-vnet" {
    depends_on = [ module.rk-rg ]
    source = "../../module/virtual_network"
  vnet=var.vnet
}
module "rk-subnet" {
  depends_on = [ module.rk-vnet ]
  source = "../../module/subnet"
  subnet=var.subnet
  
}
