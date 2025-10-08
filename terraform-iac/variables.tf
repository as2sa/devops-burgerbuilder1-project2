# variables.tf

# اسم مجموعة الموارد (Resource Group)
variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
  default     = "rg-burgerbuilder-tf-prod"
}

# موقع موارد Azure
variable "location" {
  description = "Azure region where the resources will be deployed."
  type        = string
  default     = "eastus"
}

# اسم سجل الحاويات (ACR)
variable "acr_name" {
  description = "Name for the Azure Container Registry."
  type        = string
  default     = "acrbgbuildertf" # يجب أن يكون فريداً عالمياً
}

# اسم مجموعة AKS
variable "aks_cluster_name" {
  description = "Name for the Azure Kubernetes Service cluster."
  type        = string
  default     = "aks-burgerbuilder-tf-prod"
}