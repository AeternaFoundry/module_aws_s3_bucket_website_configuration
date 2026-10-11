output "s3_bucket_website_configurations_id" {
  description = "Map of id values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3_bucket_website_configurations_bucket" {
  description = "Map of bucket values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_website_configurations_error_document" {
  description = "Map of error_document values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => one(v.error_document) if v.error_document != null && length(v.error_document) > 0 }
}
output "s3_bucket_website_configurations_expected_bucket_owner" {
  description = "Map of expected_bucket_owner values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => v.expected_bucket_owner if v.expected_bucket_owner != null && length(v.expected_bucket_owner) > 0 }
}
output "s3_bucket_website_configurations_index_document" {
  description = "Map of index_document values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => one(v.index_document) if v.index_document != null && length(v.index_document) > 0 }
}
output "s3_bucket_website_configurations_redirect_all_requests_to" {
  description = "Map of redirect_all_requests_to values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => one(v.redirect_all_requests_to) if v.redirect_all_requests_to != null && length(v.redirect_all_requests_to) > 0 }
}
output "s3_bucket_website_configurations_region" {
  description = "Map of region values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3_bucket_website_configurations_routing_rule" {
  description = "Map of routing_rule values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => v.routing_rule if v.routing_rule != null && length(v.routing_rule) > 0 }
}
output "s3_bucket_website_configurations_routing_rules" {
  description = "Map of routing_rules values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => v.routing_rules if v.routing_rules != null && length(v.routing_rules) > 0 }
}
output "s3_bucket_website_configurations_website_domain" {
  description = "Map of website_domain values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => v.website_domain if v.website_domain != null && length(v.website_domain) > 0 }
}
output "s3_bucket_website_configurations_website_endpoint" {
  description = "Map of website_endpoint values across all s3_bucket_website_configurations, keyed the same as var.s3_bucket_website_configurations"
  value       = { for k, v in aws_s3_bucket_website_configuration.s3_bucket_website_configurations : k => v.website_endpoint if v.website_endpoint != null && length(v.website_endpoint) > 0 }
}

