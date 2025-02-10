########################
# Resource Group Setup
########################
variable "resource_group_name" {
  description = "Name of the resource group to be created"
  type        = string
  default     = "my-agent-rg"
}

########################
# Global Settings
########################
variable "location" {
  description = "Azure location where resources will be created"
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Tags to assign to all resources"
  type        = map(string)
  default     = {
    environment = "dev"
  }
}

########################
# Virtual Machine
########################
variable "name" {
  description = "Specifies the base name for VM and related resources"
  type        = string
  default     = "my-agent"
}

variable "size" {
  description = "Specifies the size of the VM"
  type        = string
  default     = "Standard_B2s"
}

variable "vm_user" {
  description = "Specifies the username for the VM"
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "Specifies the public SSH key for the VM"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC..." # placeholder key
}

variable "public_ip" {
  description = "Whether to create a public IP for the VM (true/false)"
  type        = bool
  default     = true
}

variable "boot_diagnostics_storage_account" {
  description = "Storage account endpoint for boot diagnostics (optional)"
  type        = string
  default     = ""
}

########################
# OS Disk Image
########################
variable "os_disk_image" {
  type        = map(string)
  description = "OS disk image reference for the VM"
  default = {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}

variable "os_disk_storage_account_type" {
  description = "Storage account type for the OS disk."
  type        = string
  default     = "StandardSSD_LRS"

  validation {
    condition = contains(
      ["Premium_LRS", "Premium_ZRS", "StandardSSD_LRS", "StandardSSD_ZRS", "Standard_LRS"],
      var.os_disk_storage_account_type
    )
    error_message = "Invalid OS disk storage account type."
  }
}

########################
# Azure DevOps
########################
variable "azure_devops_url" {
  description = "Azure DevOps organization URL"
  type        = string
  default     = "https://dev.azure.com/MyOrganization"
}

variable "azure_devops_pat" {
  description = "Azure DevOps Personal Access Token"
  type        = string
  sensitive   = true
  default     = ""  # Overwrite with a real token
}

variable "azure_devops_agent_pool_name" {
  description = "Name of the agent pool in Azure DevOps"
  type        = string
  default     = "Default"
}

########################
# Script Variables
########################
variable "script_sas_url" {
  description = "Full SAS URL to the custom script in Azure Storage"
  type        = string
  default     = ""
}

variable "script_storage_account_name" {
  description = "Storage account name containing the custom script"
  type        = string
  default     = ""
}

variable "script_storage_account_key" {
  description = "Storage account key (if container is private)"
  type        = string
  default     = ""
}
