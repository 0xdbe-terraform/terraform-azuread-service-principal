module "azure-ad-sp" {
  
  # Module source
  source = "git::https://github.com/0xdbe-terraform/terraform-azure-ad-service-principal.git?ref=v1.0.0"
  
  # Modules vars
  application_name         = "Hello World"
}
