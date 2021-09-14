output "application_id" {
  value = azuread_application.main.application_id
}

output "service_principal_id" {
  value = azuread_service_principal.main.id
}

output "service_principal_password" {
  value     = azuread_service_principal_password.main.value
  sensitive = true
}