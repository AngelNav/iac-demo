resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "${var.prefix}-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.prefix}-k8s"

  default_node_pool {
    name                = "default"
    node_count          = 2
    max_count           = 3
    min_count           = 1
    vm_size             = "Standard_D2_v2"
    enable_auto_scaling = true
    os_disk_size_gb     = 30
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
  }
}