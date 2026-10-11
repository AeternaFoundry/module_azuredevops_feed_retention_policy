resource "azuredevops_feed_retention_policy" "feed_retention_policies" {
  for_each = var.feed_retention_policies

  count_limit                               = each.value.count_limit
  days_to_keep_recently_downloaded_packages = each.value.days_to_keep_recently_downloaded_packages
  feed_id                                   = each.value.feed_id
  project_id                                = each.value.project_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

