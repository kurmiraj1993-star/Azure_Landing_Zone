rgs = {
  rg1 = {
    name     = "raj12"
    location = "central india"
  }
}

vnet = {
  vnet1 = {
    name                = "vnet12"
    resource_group_name = "raj12"
    location            = "central india"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "subnet12"
    resource_group_name  = "raj12"
    virtual_network_name = "vnet12"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "subnet13"
    resource_group_name  = "raj12"
    virtual_network_name = "vnet12"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "subnet14"
    resource_group_name  = "raj12"
    virtual_network_name = "vnet12"
    address_prefixes     = ["10.0.3.0/24"]
  }
  subnet4 = {
    name                 = "subnet15"
    resource_group_name  = "raj12"
    virtual_network_name = "vnet12"
    address_prefixes     = ["10.0.4.0/24"]
  }
  subnet5 = {
    name                 = "subnet16"
    resource_group_name  = "raj12"
    virtual_network_name = "vnet12"
    address_prefixes     = ["10.0.5.0/24"]
  }
}

vmnic = {
  vmnic1 = {
    name                 = "frontend-nic"
    nic_name             = "subnet12"
    publicip_name        = "publicip1"
    location             = "central india"
    resource_group_name  = "raj12"
    virtual_network_name = "vnet12"
  }
  vmnic2 = {
    name                 = "backend-nic"
    nic_name             = "subnet13"
    publicip_name        = "publicip2"
    location             = "central india"
    resource_group_name  = "raj12"
    virtual_network_name = "vnet12"

  }
}

pip = {
  pip1 = {
    name                = "publicip1"
    location            = "central india"
    resource_group_name = "raj12"
  }
  pip2 = {
    name                = "publicip2"
    location            = "central india"
    resource_group_name = "raj12"
  }
}

linuxvm = {
  vm1 = {
    name                 = "frontend-vm"
    nic_name             = "frontend-nic"
    resource_group_name  = "raj12"
    location             = "central india"
    size                 = "standard_b2ats_v2"
    admin_username       = "devopsinsider"
    admin_password       = "Admin@12345"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
  }

  vm2 = {
    name                 = "backend-vm"
    nic_name             = "backend-nic"
    resource_group_name  = "raj12"
    location             = "central india"
    size                 = "standard_b2ats_v2"
    admin_username       = "devopsinsider"
    admin_password       = "Admin@12345"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
  }
}