output "feed_retention_policies_id" {
  description = "Map of id values across all feed_retention_policies, keyed the same as var.feed_retention_policies except keys with no id are omitted"
  value       = { for k, v in azuredevops_feed_retention_policy.feed_retention_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "feed_retention_policies_count_limit" {
  description = "Map of count_limit values across all feed_retention_policies, keyed the same as var.feed_retention_policies except keys with no count_limit are omitted"
  value       = { for k, v in azuredevops_feed_retention_policy.feed_retention_policies : k => v.count_limit if v.count_limit != null }
}
output "feed_retention_policies_days_to_keep_recently_downloaded_packages" {
  description = "Map of days_to_keep_recently_downloaded_packages values across all feed_retention_policies, keyed the same as var.feed_retention_policies except keys with no days_to_keep_recently_downloaded_packages are omitted"
  value       = { for k, v in azuredevops_feed_retention_policy.feed_retention_policies : k => v.days_to_keep_recently_downloaded_packages if v.days_to_keep_recently_downloaded_packages != null }
}
output "feed_retention_policies_feed_id" {
  description = "Map of feed_id values across all feed_retention_policies, keyed the same as var.feed_retention_policies except keys with no feed_id are omitted"
  value       = { for k, v in azuredevops_feed_retention_policy.feed_retention_policies : k => v.feed_id if v.feed_id != null && length(v.feed_id) > 0 }
}
output "feed_retention_policies_project_id" {
  description = "Map of project_id values across all feed_retention_policies, keyed the same as var.feed_retention_policies except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_feed_retention_policy.feed_retention_policies : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

