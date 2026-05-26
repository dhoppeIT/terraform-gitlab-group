resource "gitlab_group" "this" {
  name = var.name
  path = var.path

  allow_merge_on_skipped_pipeline                  = var.allow_merge_on_skipped_pipeline
  allowed_email_domains_list                       = var.allowed_email_domains_list
  archive_on_destroy                               = var.archive_on_destroy
  auto_devops_enabled                              = var.auto_devops_enabled
  avatar                                           = var.avatar
  avatar_hash                                      = var.avatar_hash
  default_branch                                   = var.default_branch
  description                                      = var.description
  emails_enabled                                   = var.emails_enabled
  extra_shared_runners_minutes_limit               = var.extra_shared_runners_minutes_limit
  ip_restriction_ranges                            = var.ip_restriction_ranges
  lfs_enabled                                      = var.lfs_enabled
  max_artifacts_size                               = var.max_artifacts_size
  membership_lock                                  = var.membership_lock
  mentions_disabled                                = var.mentions_disabled
  only_allow_merge_if_all_discussions_are_resolved = var.only_allow_merge_if_all_discussions_are_resolved
  only_allow_merge_if_pipeline_succeeds            = var.only_allow_merge_if_pipeline_succeeds
  parent_id                                        = var.parent_id
  permanently_remove_on_delete                     = var.permanently_remove_on_delete
  prevent_forking_outside_group                    = var.prevent_forking_outside_group
  prevent_sharing_groups_outside_hierarchy         = var.prevent_sharing_groups_outside_hierarchy
  project_creation_level                           = var.project_creation_level
  request_access_enabled                           = var.request_access_enabled
  require_two_factor_authentication                = var.require_two_factor_authentication
  share_with_group_lock                            = var.share_with_group_lock
  shared_runners_minutes_limit                     = var.shared_runners_minutes_limit
  shared_runners_setting                           = var.shared_runners_setting
  subgroup_creation_level                          = var.subgroup_creation_level
  two_factor_grace_period                          = var.two_factor_grace_period
  visibility_level                                 = var.visibility_level
  wiki_access_level                                = var.wiki_access_level

  dynamic "default_branch_protection_defaults" {
    for_each = var.default_branch_protection_defaults != null ? [var.default_branch_protection_defaults] : []

    content {
      allow_force_push             = default_branch_protection_defaults.value.allow_force_push
      allowed_to_merge             = default_branch_protection_defaults.value.allowed_to_merge
      allowed_to_push              = default_branch_protection_defaults.value.allowed_to_push
      code_owner_approval_required = default_branch_protection_defaults.value.code_owner_approval_required
      developer_can_initial_push   = default_branch_protection_defaults.value.developer_can_initial_push
    }
  }

  dynamic "push_rules" {
    for_each = var.push_rules != null ? [var.push_rules] : []

    content {
      author_email_regex            = push_rules.value.author_email_regex
      branch_name_regex             = push_rules.value.branch_name_regex
      commit_committer_check        = push_rules.value.commit_committer_check
      commit_committer_name_check   = push_rules.value.commit_committer_name_check
      commit_message_negative_regex = push_rules.value.commit_message_negative_regex
      commit_message_regex          = push_rules.value.commit_message_regex
      deny_delete_tag               = push_rules.value.deny_delete_tag
      file_name_regex               = push_rules.value.file_name_regex
      max_file_size                 = push_rules.value.max_file_size
      member_check                  = push_rules.value.member_check
      prevent_secrets               = push_rules.value.prevent_secrets
      reject_non_dco_commits        = push_rules.value.reject_non_dco_commits
      reject_unsigned_commits       = push_rules.value.reject_unsigned_commits
    }
  }
}
