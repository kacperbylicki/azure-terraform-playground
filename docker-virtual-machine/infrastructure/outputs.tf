output "resource_group" {
  value       = azurerm_resource_group.main.name
  description = "The resource group."
}

output "virtual_machine_name" {
  value = module.virtual-machine.virtual_machine_caf_name
  description = "Generated name of created virtual machine"
}