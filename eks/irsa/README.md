# Terraform EKS IRSA module

## Requirements
Binary version ```v1.3.2```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.41.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.16.0 |

## How to
Set default configuration
```
module "irsa" {
  source = "git@github.com:diego1277/terraform-kubernetes-addons.git//eks/irsa"
  openid_connect_arn = "my-openid-connect-arn"
  openid_connect_url = "my-openid-connect-url"
  service_account_name = "my-service-account" 
  namespace = "my-namespace"
  policy_arn = "my-policy-arn"
}
```
## Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [kubernetes_namespace_v1.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace_v1) | resource |
| [kubernetes_service_account.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deploy_namespace"></a> [deploy\_namespace](#input\_deploy\_namespace) | deploy namespace | `bool` | `false` | no |
| <a name="input_deploy_service_account"></a> [deploy\_service\_account](#input\_deploy\_service\_account) | deploy service account | `bool` | `false` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | service account namespace | `string` | n/a | yes |
| <a name="input_namespace_annotations"></a> [namespace\_annotations](#input\_namespace\_annotations) | namespace annotations | `map` | `{}` | no |
| <a name="input_namespace_labels"></a> [namespace\_labels](#input\_namespace\_labels) | namespace labels | `map` | `{}` | no |
| <a name="input_openid_connect_arn"></a> [openid\_connect\_arn](#input\_openid\_connect\_arn) | openid connect provider arn | `string` | n/a | yes |
| <a name="input_openid_connect_url"></a> [openid\_connect\_url](#input\_openid\_connect\_url) | openid connect provider url | `string` | n/a | yes |
| <a name="input_policy_arn"></a> [policy\_arn](#input\_policy\_arn) | policy arn | `string` | n/a | yes |
| <a name="input_service_account_annotations"></a> [service\_account\_annotations](#input\_service\_account\_annotations) | service account annotations | `map` | `{}` | no |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | service account name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | role arn ||

## Author:
- `Diego Oliveira`