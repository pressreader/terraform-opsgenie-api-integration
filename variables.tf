variable "name" {
  description = "Name of the integration. Name must be unique for each integration."
  type        = string
}

variable "type" {
  description = "Type of the integration (API, Marid, Prometheus, etc). The full list of options can be found here (https://support.atlassian.com/opsgenie/docs/integration-types-to-be-used-with-the-api/)."
  type        = string
}

variable "enabled" {
  description = "This parameter is for specifying whether the integration will be enabled or not. Defaults to true."
  type        = bool
  default     = true
}

variable "allow_write_access" {
  description = "This parameter is for configuring the write access of integration. If write access is restricted, the integration will not be authorized to write within any domain. Defaults to true."
  type        = bool
  default     = true
}

variable "ignore_responders_from_payload" {
  description = "If enabled, the integration will ignore recipients sent in request payloads. Defaults to false."
  type        = bool
  default     = false
}

variable "suppress_notifications" {
  description = "If enabled, notifications that come from alerts will be suppressed. Defaults to false."
  type        = bool
  default     = false
}

variable "owner_team_id" {
  description = "Owner team id of the integration. If changed, this will recreate a new API integration, which will probably have a different API key. Defaults to null."
  type        = string
  default     = null
}

variable "responders" {
  description = <<EOF
  <br>User, schedule, teams or escalation names to calculate which users will receive the notifications of the alert. Defaults to [].
  <br><b>type:</b> The responder type.
  <br><b>id:</b> The id of the responder.
EOF
  type        = list(object({
    type = string
    id   = string
  }))
  default = []
}

variable "webhook_url" {
  description = "It is required if type is Webhook. This is the url Opsgenie will be sending request to. Defaults to null."
  type        = string
  default     = null
}