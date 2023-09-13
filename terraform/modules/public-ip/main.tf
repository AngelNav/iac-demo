resource "azurerm_public_ip" "lb_ip" {
  name                = "${var.prefix}-LbPubIp1"
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Static"


  tags = {
    environment = "Development"
  }
}