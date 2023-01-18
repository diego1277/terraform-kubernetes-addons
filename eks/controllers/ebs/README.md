# Terraform EKS ebs controller module

## Requirements
Binary version ```v1.3.2```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.41.0 |

## How to
Set up managed configuration
```
module "ebs_managed" {
  source = "github.com/diego1277/terraform-kubernetes-addons.git//eks/controllers/ebs/"
  cluster_name = "my-cluster-name"
  openid_connect_arn = "my-openid-connect-arn" 
  openid_connect_url = "my-openid-connect-url"
}
```
Set up self managed configuration
```
module "ebs_self_managed" {
  source = "github.com/diego1277/terraform-kubernetes-addons.git//eks/controllers/ebs/"
  enable_self_managed = true
  openid_connect_arn = "my-openid-connect-arn" 
  openid_connect_url = "my-openid-connect-url"
}
```
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_helm"></a> [helm](#module\_helm) | github.com/diego1277/terraform-kubernetes-addons.git//helm | n/a |
| <a name="module_irsa"></a> [irsa](#module\_irsa) | github.com/diego1277/terraform-kubernetes-addons.git//eks/irsa | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_eks_addon.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | cluster name | `string` | `""` | no |
| <a name="input_enable_self_managed"></a> [enable\_self\_managed](#input\_enable\_self\_managed) | enable self managed(helm) addon | `bool` | `false` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | service account namespace | `string` | `"kube-system"` | no |
| <a name="input_openid_connect_arn"></a> [openid\_connect\_arn](#input\_openid\_connect\_arn) | openid connect provider arn | `string` | n/a | yes |
| <a name="input_openid_connect_url"></a> [openid\_connect\_url](#input\_openid\_connect\_url) | openid connect provider url | `string` | n/a | yes |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | service account name | `string` | `"ebs-csi-controller-sa"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_addon_id"></a> [addon\_id](#output\_addon\_id) | managed ebs addon id |vvvv

## Author:
- `Diego Oliveira`
