output "feed_retention_policies_id" {
  description = "Map of id values across all feed_retention_policies, keyed the same as var.feed_retention_policies"
  value       = { for k, v in azuredevops_feed_retention_policy.feed_retention_policies : k => v.id }
}
output "feed_retention_policies_count_limit" {
  description = "Map of count_limit values across all feed_retention_policies, keyed the same as var.feed_retention_policies"
  value       = { for k, v in azuredevops_feed_retention_policy.feed_retention_policies : k => v.count_limit }
}
output "feed_retention_policies_days_to_keep_recently_downloaded_packages" {
  description = "Map of days_to_keep_recently_downloaded_packages values across all feed_retention_policies, keyed the same as var.feed_retention_policies"
  value       = { for k, v in azuredevops_feed_retention_policy.feed_retention_policies : k => v.days_to_keep_recently_downloaded_packages }
}
output "feed_retention_policies_feed_id" {
  description = "Map of feed_id values across all feed_retention_policies, keyed the same as var.feed_retention_policies"
  value       = { for k, v in azuredevops_feed_retention_policy.feed_retention_policies : k => v.feed_id }
}
output "feed_retention_policies_project_id" {
  description = "Map of project_id values across all feed_retention_policies, keyed the same as var.feed_retention_policies"
  value       = { for k, v in azuredevops_feed_retention_policy.feed_retention_policies : k => v.project_id }
}

