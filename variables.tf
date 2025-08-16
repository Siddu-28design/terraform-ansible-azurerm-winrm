variable "resource_group_name" {
  type    = string
  default = "siddurg-winrm"
}

variable "location" {
  type    = string
  default = "North Europe"
}

variable "prefix" {
  type    = string
  default = "tfwin"
}

variable "vm_name" {
  type    = string
  default = "sidduwinvm"
}

variable "admin_username" {
  type    = string
  default = "Siddu"
}

variable "admin_password" {
  description = "Windows admin password (set as sensitive in Terraform Cloud workspace variables)"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  type    = string
  default = "Standard_D4s_v3"   # 4 vCPU, 16 GiB RAM
}


variable "image_publisher" {
  type    = string
  default = "MicrosoftWindowsServer"
}

variable "image_offer" {
  type    = string
  default = "WindowsServer"
}

variable "image_sku" {
  type    = string
  default = "2019-Datacenter"
}

variable "image_version" {
  type    = string
  default = "latest"
}
variable "my_ip_cidr" {
  description = "Optional: restrict NSG to your IP e.g. 203.0.113.4/32. Leave empty to allow all (not recommended)."
  type        = string
  default     = ""
}
