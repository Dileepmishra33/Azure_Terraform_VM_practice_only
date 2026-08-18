resource "azurerm_public_ip" "ips" {
  for_each = var.public_ip

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
}

resource "azurerm_bastion_host" "bastion" {
  for_each = var.bastion

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = "/subscriptions/5370b509-fed5-401b-a28f-6a8aa7263ccd/resourceGroups/dileep/providers/Microsoft.Network/virtualNetworks/frontend/subnets/AzureBastionSubnet"
    public_ip_address_id = azurerm_public_ip.ips[each.key].id
  }
}