# main.tf

# 1. تعريف مجموعة الموارد (Resource Group)
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# 2. تعريف سجل الحاويات (Azure Container Registry - ACR)
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic" 
  admin_enabled       = true
}

# 3. تعريف مجموعة Azure Kubernetes Service (AKS)
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.aks_cluster_name 

   default_node_pool {
    name       = "default"
    node_count = 1             # <--- التعديل هنا (من 2 إلى 1)
    vm_size    = "Standard_D2s_v6" 
  }

  identity {
    type = "SystemAssigned"
  }
}