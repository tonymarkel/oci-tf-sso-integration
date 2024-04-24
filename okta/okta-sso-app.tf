resource oci_identity_domains_identity_provider okta {
  authn_request_binding = "Post"
  description = "Okta"
  enabled     = "true"
  idcs_endpoint = "https://idcs-2d77d2579730408fb5c7a5524e903ae2.identity.oraclecloud.com:443"
  idp_sso_url   = "https://dev-94622477.okta.com/app/oraclecloudinfrastructureiam/exkfr6wt3aRnVHNn15d7/sso/saml"
  jit_user_prov_attribute_update_enabled = "false"
  jit_user_prov_create_user_enabled = "false"
  jit_user_prov_enabled             = "false"
  jit_user_prov_group_assignment_method = "Overwrite"
  jit_user_prov_group_mapping_mode      = ""
  logout_binding      = "Post"
  logout_enabled      = "true"
  logout_request_url  = "https://dev-94622477.okta.com/app/oraclecloudinfrastructureiam/exkfr6wt3aRnVHNn15d7/slo/saml"
  logout_response_url = "https://dev-94622477.okta.com/app/oraclecloudinfrastructureiam/exkfr6wt3aRnVHNn15d7/slo/saml"
  name_id_format      = "saml-emailaddress"
  partner_name        = "Okta"
  partner_provider_id = "http://www.okta.com/exkfr6wt3aRnVHNn15d7"
  requested_authentication_context = [
  ]
  schemas = [
    "urn:ietf:params:scim:schemas:oracle:idcs:IdentityProvider",
  ]
  shown_on_login_page = "true" 
  signature_hash_algorithm = "SHA-256"
  signing_certificate      = "MIIDqDCCApCgAwIBAgIGAY44eVOpMA0GCSqGSIb3DQEBCwUAMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxFTATBgNVBAMMDGRldi05NDYyMjQ3NzEcMBoGCSqGSIb3DQEJARYNaW5mb0Bva3RhLmNvbTAeFw0yNDAzMTMxNTM5NTlaFw0zNDAzMTMxNTQwNThaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEUMBIGA1UECwwLU1NPUHJvdmlkZXIxFTATBgNVBAMMDGRldi05NDYyMjQ3NzEcMBoGCSqGSIb3DQEJARYNaW5mb0Bva3RhLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAM4SwaRX3le1hXuNpmoYd9TOP+hPiHgO0CR2VlfD8PpekA2cQiWUFAnCGBAEa8f5VLBc/gg2U7V+ou8wIyq5Sf2gco7clccGOhesMehxdf8weoZ+rx/cUbseapqI9V4RM4elDqGkuDRxBpHi2AAMUDGVIbpt+O0QHHJczQ/LYLtBjhkWltUAg2J76xDmq4LelycHh2+qDHRuMti4bN13yXiuhwjk1iok3QRS7NLEhcs6GPG/e3mqbH4Pht6AIbnfaRnl8BqjVUEeBO58NglqQ3cYLMp4wYT+BhhvP+0Z75tvpM/EQT6fZH6y0ugvG1TD9ZY0gWSUytvPYJbvCqaLprMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEApcG5J4gzH9TT1KZgUeUr+SpGRlOLdvUtuFY4z1T2b1oI9sHP5WSSPI9R0yaoXDXBVEE3i5DsBjELvN70RB/SIz6ftU0OUAB4qxXoJnJzGiw+qqTV5EB7stRG7PmRbdS9zBVHaEkR/U9tws646/oOesG/29KFn3OLJA0JIPmZMP3qtHp2A5tHmcN+v7du0vGCmoXuCJLiAktcGRZU+QvLeAJu/3ONZttkGFYTSXHbASQyHnJUjxXI+bf/Uv141mE4dtXHpLQa/Az7wQD+2I6rziLmiYfMK9ClK67pdq3gg8mmbDDh3U4DBBUjuvp232Zl5Rj/3wIHKOFzHZ+l3PxfUQ=="
  type = "SAML"
  user_mapping_method          = "NameIDToUserAttribute"
  user_mapping_store_attribute = "emails.primary"
}

resource oci_identity_domains_app Okta_SCIM {
  active                  = "true"
  all_url_schemes_allowed = "false"
  allow_access_control    = "false"
  allowed_grants = [
    "client_credentials",
  ]
  allowed_operations = [
  ]
  attr_rendering_metadata {
    name = "aliasApps"
    section = ""
    visible = "false"
    widget  = ""
  }
  based_on_template {
    value         = "CustomWebAppTemplateId"
    well_known_id = "CustomWebAppTemplateId"
  }
  client_ip_checking = ""
  client_type        = "confidential"
  delegated_service_names = [
  ]
  description = "Okta_Scim"
  display_name = "Okta_SCIM"
  idcs_endpoint = "https://idcs-2d77d2579730408fb5c7a5524e903ae2.identity.oraclecloud.com:443"
  idp_policy {
    value = "DefaultIDPPolicy"
  }
  is_alias_app      = "false"
  is_enterprise_app = "false"
  is_kerberos_realm = "false"
  is_login_target   = "true"
  is_mobile_target  = "false"
  is_oauth_client   = "true"
  is_oauth_resource = "false"
  is_saml_service_provider = "false"
  is_unmanaged_app         = "false"
  is_web_tier_policy       = "false"
  login_mechanism = "OIDC"
  name = "3d66691d53904c77b09f495f11cae8b0"
  post_logout_redirect_uris = [
  ]
  redirect_uris = [
  ]
  schemas = [
    "urn:ietf:params:scim:schemas:oracle:idcs:App",
  ]
  secondary_audiences = [
  ]
  show_in_my_apps = "true"
  trust_scope = "Account"
}
