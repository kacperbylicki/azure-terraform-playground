variable "virtual_machine_name" {
  type = string
  description = "Name of created virtual machine"
  default = "docker-virtual-machine"
}

variable "environment" {
  type        = string
  description = "The environment (dev, test, prod...)"
  default     = "dev"
}

variable "location" {
  type        = string
  description = "The Azure region where all resources in this example should be created"
  default     = "westeurope"
}