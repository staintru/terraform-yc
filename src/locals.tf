locals {
  project     = netology
  environment = develop

  vm_web_name = ${local.project}-${local.environment}-platform-web
  vm_db_name  = ${local.project}-${local.environment}-platform-db
}

