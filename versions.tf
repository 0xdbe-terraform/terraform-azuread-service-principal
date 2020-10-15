terraform {
  required_providers {
    azuread = {
      source = "hashicorp/azuread"
      version = "=1.0.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~>2.3.0"
    }
  }
  required_version = ">= 0.13"
}
