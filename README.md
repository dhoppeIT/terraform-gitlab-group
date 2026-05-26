# terraform-gitlab-group

Terraform module to manage the following GitLab resources:

* gitlab_group

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_group" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-group/local"
  version = "2.0.0"

  name = "Example (group)"
  path = "example-group-48165"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 19.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 19.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [gitlab_group.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_allow_merge_on_skipped_pipeline"></a> [allow\_merge\_on\_skipped\_pipeline](#input\_allow\_merge\_on\_skipped\_pipeline) | Allow merging merge requests when the pipeline is skipped. Only applies when only\_allow\_merge\_if\_pipeline\_succeeds is true. Premium and Ultimate only | `bool` | `null` | no |
| <a name="input_allowed_email_domains_list"></a> [allowed\_email\_domains\_list](#input\_allowed\_email\_domains\_list) | A list of email address domains to allow group access | `list(string)` | `[]` | no |
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | Set to true to archive the group instead of deleting on destroy | `bool` | `null` | no |
| <a name="input_auto_devops_enabled"></a> [auto\_devops\_enabled](#input\_auto\_devops\_enabled) | Default to Auto DevOps pipeline for all projects within this group | `bool` | `false` | no |
| <a name="input_avatar"></a> [avatar](#input\_avatar) | A local path to the avatar image to upload | `string` | `null` | no |
| <a name="input_avatar_hash"></a> [avatar\_hash](#input\_avatar\_hash) | The hash of the avatar image. Use filesha256() whenever possible | `string` | `null` | no |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | Initial default branch name | `string` | `null` | no |
| <a name="input_default_branch_protection_defaults"></a> [default\_branch\_protection\_defaults](#input\_default\_branch\_protection\_defaults) | The default branch protection defaults for the group | ```object({ allow_force_push = optional(bool, false) allowed_to_merge = optional(list(string), []) allowed_to_push = optional(list(string), []) code_owner_approval_required = optional(bool, false) developer_can_initial_push = optional(bool, false) })``` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | The group's description | `string` | `null` | no |
| <a name="input_emails_enabled"></a> [emails\_enabled](#input\_emails\_enabled) | Enable email notifications | `bool` | `true` | no |
| <a name="input_extra_shared_runners_minutes_limit"></a> [extra\_shared\_runners\_minutes\_limit](#input\_extra\_shared\_runners\_minutes\_limit) | Additional CI/CD minutes for this group. Can be set by administrators only | `number` | `null` | no |
| <a name="input_ip_restriction_ranges"></a> [ip\_restriction\_ranges](#input\_ip\_restriction\_ranges) | A list of IP addresses or subnet masks to restrict group access. Only allowed on top level groups | `list(string)` | `[]` | no |
| <a name="input_lfs_enabled"></a> [lfs\_enabled](#input\_lfs\_enabled) | Enable/disable Large File Storage (LFS) for the projects in this group | `bool` | `true` | no |
| <a name="input_max_artifacts_size"></a> [max\_artifacts\_size](#input\_max\_artifacts\_size) | The maximum file size in megabytes for individual job artifacts | `number` | `null` | no |
| <a name="input_membership_lock"></a> [membership\_lock](#input\_membership\_lock) | Users cannot be added to projects in this group | `bool` | `false` | no |
| <a name="input_mentions_disabled"></a> [mentions\_disabled](#input\_mentions\_disabled) | Disable the capability of a group from getting mentioned | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the group | `string` | n/a | yes |
| <a name="input_only_allow_merge_if_all_discussions_are_resolved"></a> [only\_allow\_merge\_if\_all\_discussions\_are\_resolved](#input\_only\_allow\_merge\_if\_all\_discussions\_are\_resolved) | Only allow merging merge requests when all discussions are resolved. Premium and Ultimate only | `bool` | `null` | no |
| <a name="input_only_allow_merge_if_pipeline_succeeds"></a> [only\_allow\_merge\_if\_pipeline\_succeeds](#input\_only\_allow\_merge\_if\_pipeline\_succeeds) | Only allow merging merge requests if the pipeline succeeds. Premium and Ultimate only | `bool` | `null` | no |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | ID of the parent group (creates a nested group) | `number` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | The path of the group | `string` | n/a | yes |
| <a name="input_permanently_remove_on_delete"></a> [permanently\_remove\_on\_delete](#input\_permanently\_remove\_on\_delete) | Whether the group should be permanently removed during a delete operation. This only works with subgroups | `bool` | `null` | no |
| <a name="input_prevent_forking_outside_group"></a> [prevent\_forking\_outside\_group](#input\_prevent\_forking\_outside\_group) | When enabled, users can not fork projects from this group to external namespaces | `bool` | `false` | no |
| <a name="input_prevent_sharing_groups_outside_hierarchy"></a> [prevent\_sharing\_groups\_outside\_hierarchy](#input\_prevent\_sharing\_groups\_outside\_hierarchy) | When enabled, users cannot invite other groups outside of the top-level group's hierarchy. Only available for top-level groups | `bool` | `false` | no |
| <a name="input_project_creation_level"></a> [project\_creation\_level](#input\_project\_creation\_level) | Determine if developers can create projects in the group | `string` | `"developer"` | no |
| <a name="input_push_rules"></a> [push\_rules](#input\_push\_rules) | Push rules for the group | ```object({ author_email_regex = optional(string) branch_name_regex = optional(string) commit_committer_check = optional(bool) commit_committer_name_check = optional(bool) commit_message_negative_regex = optional(string) commit_message_regex = optional(string) deny_delete_tag = optional(bool) file_name_regex = optional(string) max_file_size = optional(number) member_check = optional(bool) prevent_secrets = optional(bool) reject_non_dco_commits = optional(bool) reject_unsigned_commits = optional(bool) })``` | `null` | no |
| <a name="input_request_access_enabled"></a> [request\_access\_enabled](#input\_request\_access\_enabled) | Allow users to request member access | `bool` | `true` | no |
| <a name="input_require_two_factor_authentication"></a> [require\_two\_factor\_authentication](#input\_require\_two\_factor\_authentication) | Require all users in this group to setup Two-factor authentication | `bool` | `false` | no |
| <a name="input_share_with_group_lock"></a> [share\_with\_group\_lock](#input\_share\_with\_group\_lock) | Prevent sharing a project with another group within this group | `bool` | `false` | no |
| <a name="input_shared_runners_minutes_limit"></a> [shared\_runners\_minutes\_limit](#input\_shared\_runners\_minutes\_limit) | Maximum number of monthly CI/CD minutes for this group. Can be set by administrators only | `number` | `null` | no |
| <a name="input_shared_runners_setting"></a> [shared\_runners\_setting](#input\_shared\_runners\_setting) | Enable or disable shared runners for a group's subgroups and projects | `string` | `"enabled"` | no |
| <a name="input_subgroup_creation_level"></a> [subgroup\_creation\_level](#input\_subgroup\_creation\_level) | Allowed to create subgroups | `string` | `"maintainer"` | no |
| <a name="input_two_factor_grace_period"></a> [two\_factor\_grace\_period](#input\_two\_factor\_grace\_period) | Time before Two-factor authentication is enforced (in hours) | `number` | `48` | no |
| <a name="input_visibility_level"></a> [visibility\_level](#input\_visibility\_level) | The group's visibility | `string` | `"private"` | no |
| <a name="input_wiki_access_level"></a> [wiki\_access\_level](#input\_wiki\_access\_level) | The group's wiki access level. Only available on Premium and Ultimate plans | `string` | `"enabled"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_avatar_url"></a> [avatar\_url](#output\_avatar\_url) | The URL of the avatar image |
| <a name="output_full_name"></a> [full\_name](#output\_full\_name) | The full name of the group |
| <a name="output_full_path"></a> [full\_path](#output\_full\_path) | The full path of the group |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
| <a name="output_runners_token"></a> [runners\_token](#output\_runners\_token) | The group level registration token to use during runner setup |
| <a name="output_web_url"></a> [web\_url](#output\_web\_url) | Web URL of the group |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
