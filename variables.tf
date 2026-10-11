variable "feed_retention_policies" {
  description = <<EOT
Map of feed_retention_policies, attributes below
Required:
    - count_limit
    - days_to_keep_recently_downloaded_packages
    - feed_id
Optional:
    - project_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    count_limit                               = number
    days_to_keep_recently_downloaded_packages = number
    feed_id                                   = string
    project_id                                = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.feed_retention_policies : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.feed_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.feed_retention_policies : (
        v.count_limit >= 1 && v.count_limit <= 5000
      )
    ])
    error_message = "must be between 1 and 5000"
  }
  validation {
    condition = alltrue([
      for k, v in var.feed_retention_policies : (
        v.days_to_keep_recently_downloaded_packages >= 1 && v.days_to_keep_recently_downloaded_packages <= 4000
      )
    ])
    error_message = "must be between 1 and 4000"
  }
  validation {
    condition = alltrue([
      for k, v in var.feed_retention_policies : (
        v.project_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

