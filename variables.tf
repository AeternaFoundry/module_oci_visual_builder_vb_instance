variable "visual_builder_vb_instances" {
  description = <<EOT
Map of visual_builder_vb_instances, attributes below
Required:
    - compartment_id
    - display_name
    - node_count
Optional:
    - consumption_model
    - defined_tags
    - freeform_tags
    - idcs_open_id
    - is_visual_builder_enabled
    - alternate_custom_endpoints (block):
        - certificate_secret_id (optional)
        - hostname (required)
    - custom_endpoint (block):
        - certificate_secret_id (optional)
        - hostname (required)
    - network_endpoint_details (block):
        - allowlisted_http_ips (optional)
        - allowlisted_http_vcns (optional, block):
            - allowlisted_ip_cidrs (optional)
            - id (required)
        - network_endpoint_type (required)
        - network_security_group_ids (optional)
        - private_endpoint_ip (optional)
        - subnet_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id            = string
    display_name              = string
    node_count                = number
    consumption_model         = optional(string)
    defined_tags              = optional(map(string))
    freeform_tags             = optional(map(string))
    idcs_open_id              = optional(string)
    is_visual_builder_enabled = optional(bool)
    alternate_custom_endpoints = optional(list(object({
      certificate_secret_id = optional(string)
      hostname              = string
    })))
    custom_endpoint = optional(object({
      certificate_secret_id = optional(string)
      hostname              = string
    }))
    network_endpoint_details = optional(object({
      allowlisted_http_ips = optional(list(string))
      allowlisted_http_vcns = optional(list(object({
        allowlisted_ip_cidrs = optional(list(string))
        id                   = string
      })))
      network_endpoint_type      = string
      network_security_group_ids = optional(set(string))
      private_endpoint_ip        = optional(string)
      subnet_id                  = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.visual_builder_vb_instances : (
        v.network_endpoint_details == null || (contains([for v in ["PRIVATE", "PUBLIC"] : lower(v)], lower(v.network_endpoint_details.network_endpoint_type)))
      )
    ])
    error_message = "must be one of: \"PRIVATE\", \"PUBLIC\""
  }
}

