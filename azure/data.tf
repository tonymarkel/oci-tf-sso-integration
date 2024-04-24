data "oci_identity_groups" "administrators" {
    compartment_id = var.tenancy_ocid
    name = "Administrators"
}
