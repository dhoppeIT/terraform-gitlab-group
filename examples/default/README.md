# Example

The configuration in this directory creates:

* gitlab_group

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 17.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gitlab_group"></a> [gitlab\_group](#module\_gitlab\_group) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gitlab_group_avatar_url"></a> [gitlab\_group\_avatar\_url](#output\_gitlab\_group\_avatar\_url) | The URL of the avatar image |
| <a name="output_gitlab_group_full_name"></a> [gitlab\_group\_full\_name](#output\_gitlab\_group\_full\_name) | The full name of the group |
| <a name="output_gitlab_group_full_path"></a> [gitlab\_group\_full\_path](#output\_gitlab\_group\_full\_path) | The full path of the group |
| <a name="output_gitlab_group_id"></a> [gitlab\_group\_id](#output\_gitlab\_group\_id) | The ID of this resource |
| <a name="output_gitlab_group_runners_token"></a> [gitlab\_group\_runners\_token](#output\_gitlab\_group\_runners\_token) | The group level registration token to use during runner setup |
| <a name="output_gitlab_group_web_url"></a> [gitlab\_group\_web\_url](#output\_gitlab\_group\_web\_url) | Web URL of the group |
<!-- END_TF_DOCS -->
