data "keycloak_openid_client" "openid_client_lookup" {
  for_each = var.openid_client_lookup

  client_id                                 = each.value.client_id
  realm_id                                  = each.value.realm_id
  always_display_in_console                 = each.value.always_display_in_console
  consent_screen_text                       = each.value.consent_screen_text
  display_on_consent_screen                 = each.value.display_on_consent_screen
  extra_config                              = each.value.extra_config
  oauth2_device_authorization_grant_enabled = each.value.oauth2_device_authorization_grant_enabled
  oauth2_device_code_lifespan               = each.value.oauth2_device_code_lifespan
  oauth2_device_polling_interval            = each.value.oauth2_device_polling_interval
  oauth2_jwt_authorization_grant_enabled    = each.value.oauth2_jwt_authorization_grant_enabled
  oauth2_jwt_authorization_grant_idp        = each.value.oauth2_jwt_authorization_grant_idp
}

