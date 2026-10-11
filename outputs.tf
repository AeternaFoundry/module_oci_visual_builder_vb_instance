output "visual_builder_vb_instances_id" {
  description = "Map of id values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no id are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "visual_builder_vb_instances_alternate_custom_endpoints" {
  description = "Map of alternate_custom_endpoints values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no alternate_custom_endpoints are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.alternate_custom_endpoints if v.alternate_custom_endpoints != null && length(v.alternate_custom_endpoints) > 0 }
}
output "visual_builder_vb_instances_compartment_id" {
  description = "Map of compartment_id values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no compartment_id are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "visual_builder_vb_instances_consumption_model" {
  description = "Map of consumption_model values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no consumption_model are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.consumption_model if v.consumption_model != null && length(v.consumption_model) > 0 }
}
output "visual_builder_vb_instances_custom_endpoint" {
  description = "Map of custom_endpoint values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no custom_endpoint are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => one(v.custom_endpoint) if v.custom_endpoint != null && length(v.custom_endpoint) > 0 }
}
output "visual_builder_vb_instances_defined_tags" {
  description = "Map of defined_tags values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no defined_tags are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "visual_builder_vb_instances_display_name" {
  description = "Map of display_name values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no display_name are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "visual_builder_vb_instances_freeform_tags" {
  description = "Map of freeform_tags values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "visual_builder_vb_instances_idcs_open_id" {
  description = "Map of idcs_open_id values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no idcs_open_id are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.idcs_open_id if v.idcs_open_id != null && length(v.idcs_open_id) > 0 }
  sensitive   = true
}
output "visual_builder_vb_instances_instance_url" {
  description = "Map of instance_url values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no instance_url are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.instance_url if v.instance_url != null && length(v.instance_url) > 0 }
}
output "visual_builder_vb_instances_is_visual_builder_enabled" {
  description = "Map of is_visual_builder_enabled values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no is_visual_builder_enabled are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.is_visual_builder_enabled if v.is_visual_builder_enabled != null }
}
output "visual_builder_vb_instances_management_nat_gateway_ip" {
  description = "Map of management_nat_gateway_ip values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no management_nat_gateway_ip are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.management_nat_gateway_ip if v.management_nat_gateway_ip != null && length(v.management_nat_gateway_ip) > 0 }
}
output "visual_builder_vb_instances_management_vcn_id" {
  description = "Map of management_vcn_id values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no management_vcn_id are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.management_vcn_id if v.management_vcn_id != null && length(v.management_vcn_id) > 0 }
}
output "visual_builder_vb_instances_network_endpoint_details" {
  description = "Map of network_endpoint_details values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no network_endpoint_details are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => one(v.network_endpoint_details) if v.network_endpoint_details != null && length(v.network_endpoint_details) > 0 }
}
output "visual_builder_vb_instances_node_count" {
  description = "Map of node_count values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no node_count are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.node_count if v.node_count != null }
}
output "visual_builder_vb_instances_service_nat_gateway_ip" {
  description = "Map of service_nat_gateway_ip values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no service_nat_gateway_ip are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.service_nat_gateway_ip if v.service_nat_gateway_ip != null && length(v.service_nat_gateway_ip) > 0 }
}
output "visual_builder_vb_instances_service_vcn_id" {
  description = "Map of service_vcn_id values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no service_vcn_id are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.service_vcn_id if v.service_vcn_id != null && length(v.service_vcn_id) > 0 }
}
output "visual_builder_vb_instances_state" {
  description = "Map of state values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no state are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "visual_builder_vb_instances_state_message" {
  description = "Map of state_message values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no state_message are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.state_message if v.state_message != null && length(v.state_message) > 0 }
}
output "visual_builder_vb_instances_system_tags" {
  description = "Map of system_tags values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no system_tags are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "visual_builder_vb_instances_time_created" {
  description = "Map of time_created values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no time_created are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "visual_builder_vb_instances_time_updated" {
  description = "Map of time_updated values across all visual_builder_vb_instances, keyed the same as var.visual_builder_vb_instances except keys with no time_updated are omitted"
  value       = { for k, v in oci_visual_builder_vb_instance.visual_builder_vb_instances : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

