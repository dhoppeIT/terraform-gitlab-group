variable "name" {
  type        = string
  description = "The name of the group"
}

variable "path" {
  type        = string
  description = "The path of the group"
}

variable "allowed_email_domains_list" {
  type        = list(string)
  default     = []
  description = "A list of email address domains to allow group access"
}

variable "auto_devops_enabled" {
  type        = bool
  default     = false
  description = "Default to Auto DevOps pipeline for all projects within this group"
}

variable "avatar" {
  type        = string
  default     = null
  description = "A local path to the avatar image to upload"
}

variable "avatar_hash" {
  type        = string
  default     = null
  description = "The hash of the avatar image"
}

variable "default_branch" {
  type        = string
  default     = null
  description = "Initial default branch name"
}

variable "default_branch_protection_defaults" {
  type        = list(string)
  default     = []
  description = "The default branch protection defaults"
}

variable "description" {
  type        = string
  default     = null
  description = "The group's description"
}

variable "emails_enabled" {
  type        = bool
  default     = true
  description = "Enable email notifications"
}

variable "extra_shared_runners_minutes_limit" {
  type        = number
  default     = null
  description = "Additional CI/CD minutes for this group"
}

variable "ip_restriction_ranges" {
  type        = list(string)
  default     = []
  description = "A list of IP addresses or subnet masks to restrict group access"
}

variable "lfs_enabled" {
  type        = bool
  default     = true
  description = "Enable/disable Large File Storage (LFS) for the projects in this group"
}

variable "membership_lock" {
  type        = bool
  default     = false
  description = "Users cannot be added to projects in this group"
}

variable "mentions_disabled" {
  type        = bool
  default     = false
  description = "Disable the capability of a group from getting mentioned"
}

variable "parent_id" {
  type        = number
  default     = null
  description = "ID of the parent group (creates a nested group)"
}

variable "permanently_remove_on_delete" {
  type        = bool
  default     = false
  description = "Whether the group should be permanently removed during a delete operation"
}

variable "prevent_forking_outside_group" {
  type        = bool
  default     = false
  description = "When enabled, users can not fork projects from this group to external namespaces"
}

variable "project_creation_level" {
  type        = string
  default     = "developer"
  description = "Determine if developers can create projects in the group"

  validation {
    condition     = contains(["noone", "maintainer", "developer"], var.project_creation_level)
    error_message = "Valid values are noone, maintainer, developer"
  }
}

variable "push_rules" {
  type        = list(string)
  default     = []
  description = "Push rules for the group"
}

variable "request_access_enabled" {
  type        = bool
  default     = true
  description = "Allow users to request member access"
}

variable "require_two_factor_authentication" {
  type        = bool
  default     = false
  description = "Require all users in this group to setup Two-factor authentication"
}

variable "share_with_group_lock" {
  type        = bool
  default     = false
  description = "Prevent sharing a project with another group within this group"
}

variable "shared_runners_minutes_limit" {
  type        = number
  default     = null
  description = "Maximum number of monthly CI/CD minutes for this group"
}

variable "shared_runners_setting" {
  type        = string
  default     = "enabled"
  description = "Enable or disable shared runners for a group’s subgroups and projects"

  validation {
    condition     = contains(["enabled", "disabled_and_overridable", "disabled_and_unoverridable", "disabled_with_override"], var.shared_runners_setting)
    error_message = "Valid values are enabled, disabled_and_overridable, disabled_and_unoverridable, disabled_with_override"
  }
}

variable "subgroup_creation_level" {
  type        = string
  default     = "maintainer"
  description = "Allowed to create subgroups"

  validation {
    condition     = contains(["owner", "maintainer"], var.subgroup_creation_level)
    error_message = "Valid values are owner, maintainer"
  }
}

variable "two_factor_grace_period" {
  type        = number
  default     = 48
  description = "Time before Two-factor authentication is enforced (in hours)"
}

variable "visibility_level" {
  type        = string
  default     = "private"
  description = "The group's visibility"

  validation {
    condition     = contains(["private", "internal", "public"], var.visibility_level)
    error_message = "Valid values are private, internal, public"
  }
}

variable "wiki_access_level" {
  type        = string
  default     = "enabled"
  description = "The group's wiki access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.wiki_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}
