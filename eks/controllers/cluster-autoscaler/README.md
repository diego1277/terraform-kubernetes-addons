/*
    k8s.io/cluster-autoscaler/my-cluster	
    owned

    k8s.io/cluster-autoscaler/enabled	true

https://github.com/kubernetes/autoscaler/tree/master/charts/cluster-autoscaler

https://docs.aws.amazon.com/eks/latest/userguide/autoscaling.html#cluster-autoscaler

https://aws.github.io/aws-eks-best-practices/cluster-autoscaling/

*/

# Terraform Cluster-Autoscaler controller module

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
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | cluster name | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | service account namespace | `string` | `"kube-system"` | no |
| <a name="input_openid_connect_arn"></a> [openid\_connect\_arn](#input\_openid\_connect\_arn) | openid connect provider arn | `string` | n/a | yes |
| <a name="input_openid_connect_url"></a> [openid\_connect\_url](#input\_openid\_connect\_url) | openid connect provider url | `string` | n/a | yes |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | service account name | `string` | `"cluster-autoscaler"` | no |

## Outputs

## Author:
- `Diego Oliveira`