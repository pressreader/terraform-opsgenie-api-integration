resource "opsgenie_api_integration" "main" {
  name = var.name
  type = var.type

  enabled                        = var.enabled
  allow_write_access             = var.allow_write_access
  ignore_responders_from_payload = var.ignore_responders_from_payload
  suppress_notifications         = var.suppress_notifications
  owner_team_id                  = var.owner_team_id
  webhook_url                    = var.webhook_url

  dynamic "responders" {
    for_each = {for v in var.responders : v["id"] => v}
    content {
      type = responders.value.type
      id   = responders.value.id
    }
  }
}
