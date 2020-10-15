# Create an "Enterprise Application" in Azure Active Directory that will be associate to Service Principal
resource azuread_application main {
  name      = var.application_name
  homepage  = var.application_homepage
}

# Create a Service Principal
resource azuread_service_principal main {
  application_id = azuread_application.main.application_id
}

# Generate a random password
resource random_password main {
  length = 35
  min_upper = 1
  min_lower = 1
  min_numeric = 1
  min_special = 1
  special = true
  override_special = "@#$%^&*-_!+=[]{}|:',.?/`~();"
}

# Set password for Service Principal (validity: 1 year)
resource azuread_service_principal_password main {
  service_principal_id = azuread_service_principal.main.id
  # Description must be a short identifier because it is a 'key_id'
  description          = "secret"
  value                = random_password.main.result
  end_date_relative   = "8760h"
}