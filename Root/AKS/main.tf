resource "azurerm_kubernetes_cluster" "aks" {
    
  name                = var.aks_config.name
  location            = var.aks_config.location
  resource_group_name = var.aks_config.rg_name
  dns_prefix          = "appaks1"
  oidc_issuer_enabled = true

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s_v2"
  }

  identity {
    type = "SystemAssigned"
  }

}

# output "client_certificate" {
#   value = {
#     for k, cluster in azurerm_kubernetes_cluster.aks :
#     k => cluster.kube_config[0].client_certificate
#   }
#   sensitive = true
# }

# output "kube_config" {
#   value = {
#     for k, cluster in azurerm_kubernetes_cluster.aks :
#     k => cluster.kube_config_raw
#   }
#   sensitive = true
# }