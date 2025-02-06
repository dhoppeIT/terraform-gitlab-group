resource "gitlab_group" "this" {
  name = var.name
  path = var.path

  allowed_email_domains_list         = var.allowed_email_domains_list
  auto_devops_enabled                = var.auto_devops_enabled
  avatar                             = var.avatar
  avatar_hash                        = var.avatar_hash
  default_branch                     = var.default_branch
  description                        = var.description
  emails_enabled                     = var.emails_enabled
  extra_shared_runners_minutes_limit = var.extra_shared_runners_minutes_limit
  ip_restriction_ranges              = var.ip_restriction_ranges
  lfs_enabled                        = var.lfs_enabled
  membership_lock                    = var.membership_lock
  mentions_disabled                  = var.mentions_disabled
  parent_id                          = var.parent_id
  permanently_remove_on_delete       = var.permanently_remove_on_delete
  prevent_forking_outside_group      = var.prevent_forking_outside_group
  project_creation_level             = var.project_creation_level
  request_access_enabled             = var.request_access_enabled
  require_two_factor_authentication  = var.require_two_factor_authentication
  share_with_group_lock              = var.share_with_group_lock
  shared_runners_minutes_limit       = var.shared_runners_minutes_limit
  shared_runners_setting             = var.shared_runners_setting
  subgroup_creation_level            = var.subgroup_creation_level
  two_factor_grace_period            = var.two_factor_grace_period
  visibility_level                   = var.visibility_level
  wiki_access_level                  = var.wiki_access_level

  dynamic "default_branch_protection_defaults" {
    for_each = length(var.default_branch_protection_defaults) > 0 ? [var.default_branch_protection_defaults] : []

    content {
      allow_force_push           = lookup(default_branch_protection_defaults.value, "allow_force_push", false)
      allowed_to_merge           = lookup(default_branch_protection_defaults.value, "allowed_to_merge", [])
      allowed_to_push            = lookup(default_branch_protection_defaults.value, "allowed_to_push", [])
      developer_can_initial_push = lookup(default_branch_protection_defaults.value, "developer_can_initial_push", false)
    }
  }

  dynamic "push_rules" {
    for_each = length(var.push_rules) > 0 ? [var.push_rules] : []

    content {
      author_email_regex            = lookup(push_rules.value, "author_email_regex", null)
      branch_name_regex             = lookup(push_rules.value, "branch_name_regex", null)
      commit_committer_check        = lookup(push_rules.value, "commit_committer_check", null)
      commit_committer_name_check   = lookup(push_rules.value, "commit_committer_name_check", null)
      commit_message_negative_regex = lookup(push_rules.value, "commit_message_negative_regex", null)
      commit_message_regex          = lookup(push_rules.value, "commit_message_regex", null)
      deny_delete_tag               = lookup(push_rules.value, "deny_delete_tag", null)
      file_name_regex               = lookup(push_rules.value, "file_name_regex", null)
      max_file_size                 = lookup(push_rules.value, "max_file_size", null)
      member_check                  = lookup(push_rules.value, "member_check", null)
      prevent_secrets               = lookup(push_rules.value, "prevent_secrets", null)
      reject_non_dco_commits        = lookup(push_rules.value, "reject_non_dco_commits", null)
      reject_unsigned_commits       = lookup(push_rules.value, "reject_unsigned_commits", null)
    }
  }
}
