resource "oci_visual_builder_vb_instance" "visual_builder_vb_instances" {
  for_each = var.visual_builder_vb_instances

  compartment_id            = each.value.compartment_id
  display_name              = each.value.display_name
  node_count                = each.value.node_count
  consumption_model         = each.value.consumption_model
  defined_tags              = each.value.defined_tags
  freeform_tags             = each.value.freeform_tags
  idcs_open_id              = each.value.idcs_open_id
  is_visual_builder_enabled = each.value.is_visual_builder_enabled

  dynamic "alternate_custom_endpoints" {
    for_each = each.value.alternate_custom_endpoints != null ? each.value.alternate_custom_endpoints : []
    content {
      certificate_secret_id = alternate_custom_endpoints.value.certificate_secret_id
      hostname              = alternate_custom_endpoints.value.hostname
    }
  }

  dynamic "custom_endpoint" {
    for_each = each.value.custom_endpoint != null ? [each.value.custom_endpoint] : []
    content {
      certificate_secret_id = custom_endpoint.value.certificate_secret_id
      hostname              = custom_endpoint.value.hostname
    }
  }

  dynamic "network_endpoint_details" {
    for_each = each.value.network_endpoint_details != null ? [each.value.network_endpoint_details] : []
    content {
      allowlisted_http_ips = network_endpoint_details.value.allowlisted_http_ips
      dynamic "allowlisted_http_vcns" {
        for_each = network_endpoint_details.value.allowlisted_http_vcns != null ? network_endpoint_details.value.allowlisted_http_vcns : []
        content {
          allowlisted_ip_cidrs = allowlisted_http_vcns.value.allowlisted_ip_cidrs
          id                   = allowlisted_http_vcns.value.id
        }
      }
      network_endpoint_type      = network_endpoint_details.value.network_endpoint_type
      network_security_group_ids = network_endpoint_details.value.network_security_group_ids
      private_endpoint_ip        = network_endpoint_details.value.private_endpoint_ip
      subnet_id                  = network_endpoint_details.value.subnet_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

