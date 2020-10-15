module "azure_ad_sp" {
  
  # Module source
  source = "git::https://github.com/0xdbe-terraform/terraform-azure-ad-service-principal.git?ref=v1.0.1"
  
  # Modules vars
  application_name  = "Hello World"
}
