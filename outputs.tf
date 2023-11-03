output "avatar_url" {
  description = "The URL of the avatar image"
  value       = gitlab_group.this.avatar_url
}

output "full_name" {
  description = "The full name of the group"
  value       = gitlab_group.this.full_name
}

output "full_path" {
  description = "The full path of the group"
  value       = gitlab_group.this.full_path
}

output "id" {
  description = "The ID of this resource"
  value       = gitlab_group.this.id
}

output "runners_token" {
  description = "The group level registration token to use during runner setup"
  value       = gitlab_group.this.runners_token
  sensitive   = true
}

output "web_url" {
  description = "Web URL of the group"
  value       = gitlab_group.this.web_url
}
