variable "application_name" {
  type        = string
  description = "The display name for the application"
}

variable "application_homepage" {
  type        = string
  description = "The URL to the application's home page"
  default     = "https://app.example.com"
}