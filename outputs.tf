output "vm_id" {
  description = "ID of the created VM"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "public_ip" {
  description = "Public IP address of the VM (if created)"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "username" {
  description = "VM admin username"
  value       = var.vm_user
}

output "resource_group" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.rg.name
}
