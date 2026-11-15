variable "vm_web_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

#variable "vm_web_name" {
#  type    = string
#  default = "netology-develop-platform-web"
#}

variable "vm_web_platform_id" {
  type    = string
  default = "standard-v1"
}

#variable "vm_web_cores" {
#  type    = number
#  default = 2
#}

#variable "vm_web_memory" {
#  type    = number
#  default = 1
#}

#variable "vm_web_core_fraction" {
#  type    = number
#  default = 5
#}

#variable "vm_db_name" {
#  type    = string
#  default = "netology-develop-platform-db"
#}

variable "vm_db_platform_id" {
  type    = string
  default = "standard-v2"
}

variable "vm_db_zone" {
  type    = string
  default = "ru-central1-d"
}

#variable "vm_db_cores" {
#  type    = number
#  default = 2
#}

#variable "vm_db_memory" {
#  type    = number
#  default = 2
#}

#variable "vm_db_core_fraction" {
#  type    = number
#  default = 20
#}

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 5
      hdd_size      = 5
      hdd_type      = "network-hdd"
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      hdd_size      = 5
      hdd_type      = "network-hdd"
    }
  }
}

variable "vms_metadata" {
  type = map(string)
  default = {
    "serial-port-enable" = "1"
  }
}
