data "azurerm_subnet" "frontend" {
  name                 = "fronend"
  virtual_network_name = "frontend"
  resource_group_name  = "dileep"
}

resource "azurerm_network_interface" "NICs" {
  for_each            = var.nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name



  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.frontend.id
    private_ip_address_allocation = "Dynamic"
  }


}

resource "azurerm_network_security_rule" "allow_ssh" {
  name      = "Allow-SSH"
  priority  = 100
  direction = "Inbound"
  access    = "Allow"
  protocol  = "Tcp"

  source_port_range      = "*"
  destination_port_range = "22"

  source_address_prefix      = "*"
  destination_address_prefix = "*"

  resource_group_name         = "dileep"
  network_security_group_name = "nsg1"
}
