output "api_key" {
  value     = opsgenie_api_integration.main.api_key
  sensitive = true
}