# OpsGenie API Integration Terraform module

Terraform module which creates API Integration in OpsGenie

## Usage

```terraform
module "api_integration" {
  source = "git::https://github.com/pressreader/terraform-opsgenie-api-integration.git?ref=v1.0.0"

  name    = "Name of a API Integration"
  type    = "Type of the API Integration"
  enabled = true # Defaults to true

  allow_write_access             = true           # Defaults to true
  ignore_responders_from_payload = false          # Defaults to false
  suppress_notifications         = false          # Defaults to false
  
  owner_team_id = "ID of a team"     # Defaults to null
  webhook_url   = "URL of a webhook" # Defaults to null

  # Defaults to []
  responders = [
    {
      type = "The responder type"
      id   = "The id of the responder"
    },
  ]
}
```