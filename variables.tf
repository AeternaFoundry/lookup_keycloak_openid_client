variable "openid_client_lookup" {
  description = <<EOT
Map of openid_client_lookup, attributes below
Required:
    - client_id
    - realm_id
Optional:
    - always_display_in_console
    - consent_screen_text
    - display_on_consent_screen
    - extra_config
    - oauth2_device_authorization_grant_enabled
    - oauth2_device_code_lifespan
    - oauth2_device_polling_interval
    - oauth2_jwt_authorization_grant_enabled
    - oauth2_jwt_authorization_grant_idp
EOT

  type = map(object({
    client_id                                 = string
    realm_id                                  = string
    always_display_in_console                 = optional(bool)
    consent_screen_text                       = optional(string)
    display_on_consent_screen                 = optional(bool)
    extra_config                              = optional(map(string))
    oauth2_device_authorization_grant_enabled = optional(bool)
    oauth2_device_code_lifespan               = optional(string)
    oauth2_device_polling_interval            = optional(string)
    oauth2_jwt_authorization_grant_enabled    = optional(bool)
    oauth2_jwt_authorization_grant_idp        = optional(string)
  }))
}

