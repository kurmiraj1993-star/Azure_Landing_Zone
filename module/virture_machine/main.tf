data "azurerm_subnet" "subnet" {
  for_each = var.vmnic
  name                 = each.value.nic_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "public" {
  for_each = var.vmnic
  name                = each.value.publicip_name
  resource_group_name = each.value.resource_group_name
  }

resource "azurerm_network_interface" "nic" {
    for_each = var.vmnic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.public[each.key].id
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
    for_each = var.linuxvm
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
  network_interface_ids = [azurerm_network_interface.nic[each.value].id]

    os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}