# terraform-gitlab-group

Terraform module to manage the following GitLab resources:

* gitlab_group

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_group" {
  source = "git::ssh://git@gitlab.com:terraform-child-modules1/terraform-gitlab-group.git"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_group.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_devops_enabled"></a> [auto\_devops\_enabled](#input\_auto\_devops\_enabled) | Default to Auto DevOps pipeline for all projects within this group | `bool` | `false` | no |
| <a name="input_avatar"></a> [avatar](#input\_avatar) | A local path to the avatar image to upload | `string` | `null` | no |
| <a name="input_avatar_hash"></a> [avatar\_hash](#input\_avatar\_hash) | The hash of the avatar image | `string` | `null` | no |
| <a name="input_default_branch_protection"></a> [default\_branch\_protection](#input\_default\_branch\_protection) | See https://docs.gitlab.com/ee/api/groups.html#options-for-default_branch_protection | `number` | `2` | no |
| <a name="input_description"></a> [description](#input\_description) | The group's description | `string` | `null` | no |
| <a name="input_emails_disabled"></a> [emails\_disabled](#input\_emails\_disabled) | Disable email notifications | `bool` | `false` | no |
| <a name="input_extra_shared_runners_minutes_limit"></a> [extra\_shared\_runners\_minutes\_limit](#input\_extra\_shared\_runners\_minutes\_limit) | Additional CI/CD minutes for this group | `number` | `null` | no |
| <a name="input_ip_restriction_ranges"></a> [ip\_restriction\_ranges](#input\_ip\_restriction\_ranges) | A list of IP addresses or subnet masks to restrict group access | `list(string)` | `[]` | no |
| <a name="input_lfs_enabled"></a> [lfs\_enabled](#input\_lfs\_enabled) | Enable/disable Large File Storage (LFS) for the projects in this group | `bool` | `true` | no |
| <a name="input_membership_lock"></a> [membership\_lock](#input\_membership\_lock) | Users cannot be added to projects in this group | `bool` | `false` | no |
| <a name="input_mentions_disabled"></a> [mentions\_disabled](#input\_mentions\_disabled) | Disable the capability of a group from getting mentioned | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the group | `string` | n/a | yes |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | ID of the parent group (creates a nested group) | `number` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | The path of the group | `string` | n/a | yes |
| <a name="input_prevent_forking_outside_group"></a> [prevent\_forking\_outside\_group](#input\_prevent\_forking\_outside\_group) | When enabled, users can not fork projects from this group to external namespaces | `bool` | `false` | no |
| <a name="input_project_creation_level"></a> [project\_creation\_level](#input\_project\_creation\_level) | Determine if developers can create projects in the group | `string` | `"developer"` | no |
| <a name="input_request_access_enabled"></a> [request\_access\_enabled](#input\_request\_access\_enabled) | Allow users to request member access | `bool` | `true` | no |
| <a name="input_require_two_factor_authentication"></a> [require\_two\_factor\_authentication](#input\_require\_two\_factor\_authentication) | Require all users in this group to setup Two-factor authentication | `bool` | `false` | no |
| <a name="input_share_with_group_lock"></a> [share\_with\_group\_lock](#input\_share\_with\_group\_lock) | Prevent sharing a project with another group within this group | `bool` | `false` | no |
| <a name="input_shared_runners_minutes_limit"></a> [shared\_runners\_minutes\_limit](#input\_shared\_runners\_minutes\_limit) | Maximum number of monthly CI/CD minutes for this group | `number` | `null` | no |
| <a name="input_shared_runners_setting"></a> [shared\_runners\_setting](#input\_shared\_runners\_setting) | Enable or disable shared runners for a group’s subgroups and projects | `string` | `"enabled"` | no |
| <a name="input_subgroup_creation_level"></a> [subgroup\_creation\_level](#input\_subgroup\_creation\_level) | Allowed to create subgroups | `string` | `"maintainer"` | no |
| <a name="input_two_factor_grace_period"></a> [two\_factor\_grace\_period](#input\_two\_factor\_grace\_period) | Time before Two-factor authentication is enforced (in hours) | `number` | `48` | no |
| <a name="input_visibility_level"></a> [visibility\_level](#input\_visibility\_level) | The group's visibility | `string` | `"private"` | no |
| <a name="input_wiki_access_level"></a> [wiki\_access\_level](#input\_wiki\_access\_level) | The group's wiki access level | `string` | `"enabled"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_avatar_url"></a> [avatar\_url](#output\_avatar\_url) | The URL of the avatar image |
| <a name="output_full_name"></a> [full\_name](#output\_full\_name) | The full name of the group |
| <a name="output_full_path"></a> [full\_path](#output\_full\_path) | The full path of the group |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
| <a name="output_runners_token"></a> [runners\_token](#output\_runners\_token) | The group level registration token to use during runner setup |
| <a name="output_web_url"></a> [web\_url](#output\_web\_url) | Web URL of the group |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppe).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
