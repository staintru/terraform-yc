###cloud vars

variable "cloud_id" {
  type        = string
  default = "b1gpgo9r658n59i4c4s8"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1gpgvqbqlv0osu65lj8"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vms_subnet_name_b" {
  type    = string
  default = "develop-b"
}

variable "vms_subnet_zone_b" {
  type    = string
  default = "ru-central1-b"
}

variable "vms_subnet_cidr_b" {
  type    = list(string)
  default = ["10.0.2.0/24"]
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

###ssh vars

variable "vms_ssh_root_key" {
  type = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIbqo6TXgBaljT6Hm/nf94FkkHsNVLsF6nbSrghqqJas shevlyakov_a@shevlyakov_a@ubntlts24"
  description = "Teraform key"
}
