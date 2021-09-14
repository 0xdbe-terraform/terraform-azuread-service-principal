# Create an "application" (aka "App Registration" in Azure Active Directory)
resource azuread_application main {
  display_name = "sp-${replace(var.application_full_name, " ","")}-${var.service_principal_purpose}-${var.application_environment}"
}

# Create a "Service Principal" (aka "Enterprise Application" in Azure Active Directory)
resource azuread_service_principal main {
  application_id = azuread_application.main.application_id
}

# Set password for Service Principal (validity: 1 year)
resource azuread_service_principal_password main {
  service_principal_id = azuread_service_principal.main.id
}