resource oci_identity_domains_identity_provider azure {
  authn_request_binding = "Redirect"
  description = "Azure"
  enabled     = "true"
  idcs_endpoint = "https://idcs-2d77d2579730408fb5c7a5524e903ae2.identity.oraclecloud.com:443"
  jit_user_prov_attribute_update_enabled = "false"
  jit_user_prov_create_user_enabled = "false"
  jit_user_prov_enabled             = "false"
  jit_user_prov_group_assignment_method = "Overwrite"
  jit_user_prov_group_mapping_mode      = ""
  logout_binding = "Redirect"
  shown_on_login_page         = "true"
  metadata = var.metadata 
  name_id_format      = "saml-emailaddress"
  partner_name        = "Azure"
  partner_provider_id = "https://sts.windows.net/600d4101-ea2b-44cb-8234-d89180928d9e/"
  requested_authentication_context = [
  ]
  schemas = [
    "urn:ietf:params:scim:schemas:oracle:idcs:IdentityProvider",
  ]
  signature_hash_algorithm = "SHA-256"
  type = "SAML"
  user_mapping_method          = "NameIDToUserAttribute"
  user_mapping_store_attribute = "emails.primary"
}

resource oci_identity_domains_user azure_administrator {
  idcs_endpoint = "https://idcs-2d77d2579730408fb5c7a5524e903ae2.identity.oraclecloud.com:443"
  schemas = [
    "urn:ietf:params:scim:schemas:core:2.0:User",
    "urn:ietf:params:scim:schemas:oracle:idcs:extension:userState:User",
    "urn:ietf:params:scim:schemas:oracle:idcs:extension:user:User",
  ]
  user_name = "oci.administrator@tomarkeloracle.onmicrosoft.com"
  active = "true"
  display_name = "Azure Administrator"
  emails {
    primary   = "true"
    secondary = "false"
    type      = "work"
    value     = "oci.administrator@tomarkeloracle.onmicrosoft.com"
    verified  = "false"
  }
  name {
    family_name = "Administrator"
    formatted   = "Azure Administrator"
    given_name  = "Azure"
  }
  urnietfparamsscimschemasoracleidcsextensioncapabilities_user {
    can_use_api_keys    = "true"
    can_use_auth_tokens = "true"
    can_use_console_password         = "true"
    can_use_customer_secret_keys     = "true"
    can_use_db_credentials           = "true"
    can_use_oauth2client_credentials = "true"
    can_use_smtp_credentials         = "true"
  }
}

resource "oci_identity_user_group_membership" "Administrators" {
    group_id = "ocid1.group.oc1..aaaaaaaamy3rp7lm56v3ggpbiur5vo2zt4fqafdvgldxijtrc6qsi55eqskq" 
    user_id = oci_identity_domains_user.azure_administrator.ocid
}
