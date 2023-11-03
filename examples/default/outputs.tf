output "gitlab_group_avatar_url" {
  description = "The URL of the avatar image"
  value       = module.gitlab_group.avatar_url
}

output "gitlab_group_full_name" {
  description = "The full name of the group"
  value       = module.gitlab_group.full_name
}

output "gitlab_group_full_path" {
  description = "The full path of the group"
  value       = module.gitlab_group.full_path
}

output "gitlab_group_id" {
  description = "The ID of this resource"
  value       = module.gitlab_group.id
}

output "gitlab_group_runners_token" {
  description = "The group level registration token to use during runner setup"
  value       = module.gitlab_group.runners_token
  sensitive   = true
}

output "gitlab_group_web_url" {
  description = "Web URL of the group"
  value       = module.gitlab_group.web_url
}
