# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.Resource_Group
  location = var.location
}

# AKS 
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-lab"
  location            = var.location
  resource_group_name = var.Resource_Group
  dns_prefix          = "aks-lab"

  default_node_pool {
    name       = "nodepoollab"
    node_count = 1
    vm_size    = "standard_b4ps_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }
}
