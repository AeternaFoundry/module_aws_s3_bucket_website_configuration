variable "s3_bucket_website_configurations" {
  description = <<EOT
Map of s3_bucket_website_configurations, attributes below
Required:
    - bucket
Optional:
    - expected_bucket_owner
    - region
    - routing_rules
    - error_document (block):
        - key (required)
    - index_document (block):
        - suffix (required)
    - redirect_all_requests_to (block):
        - host_name (required)
        - protocol (optional)
    - routing_rule (block):
        - condition (optional, block):
            - http_error_code_returned_equals (optional)
            - key_prefix_equals (optional)
        - redirect (required, block):
            - host_name (optional)
            - http_redirect_code (optional)
            - protocol (optional)
            - replace_key_prefix_with (optional)
            - replace_key_with (optional)
EOT

  type = map(object({
    bucket                = string
    expected_bucket_owner = optional(string)
    region                = optional(string)
    routing_rules         = optional(string)
    error_document = optional(object({
      key = string
    }))
    index_document = optional(object({
      suffix = string
    }))
    redirect_all_requests_to = optional(object({
      host_name = string
      protocol  = optional(string)
    }))
    routing_rule = optional(list(object({
      condition = optional(object({
        http_error_code_returned_equals = optional(string)
        key_prefix_equals               = optional(string)
      }))
      redirect = object({
        host_name               = optional(string)
        http_redirect_code      = optional(string)
        protocol                = optional(string)
        replace_key_prefix_with = optional(string)
        replace_key_with        = optional(string)
      })
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.s3_bucket_website_configurations : (
        v.routing_rules == null || (can(jsondecode(v.routing_rules)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

