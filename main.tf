resource "gitlab_group" "this" {
  name                               = var.name
  path                               = var.path
  auto_devops_enabled                = var.auto_devops_enabled
  avatar                             = var.avatar
  avatar_hash                        = var.avatar_hash
  default_branch_protection          = var.default_branch_protection
  description                        = var.description
  emails_disabled                    = var.emails_disabled
  extra_shared_runners_minutes_limit = var.extra_shared_runners_minutes_limit
  ip_restriction_ranges              = var.ip_restriction_ranges
  lfs_enabled                        = var.lfs_enabled
  membership_lock                    = var.membership_lock
  mentions_disabled                  = var.mentions_disabled
  parent_id                          = var.parent_id
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
}
