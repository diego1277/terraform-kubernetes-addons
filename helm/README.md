# Terraform Helm module

## Requirements
Binary version ```v1.3.2```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |

## Resources

| Name | Type |
|------|------|
| [helm_release.this](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## How to
Set default configuration
```
module "helmchart" {
  source = "git@github.com:diego1277/terraform-kubernetes-addons.git//helm"
  name = "release-name"
  namespace = "release-namespace"
  repository = "https://chartrepository.github.io"
  chart = "chartname"
}
```
Enable custom values
```
module "helmchart" {
  source = "git@github.com:diego1277/terraform-kubernetes-addons.git//helm"
  name = "release-name"
  namespace = "release-namespace"
  repository = "https://chartrepository.github.io"
  chart = "chartname"
  enable_custom_values = true
  custom_values = {
    foo = {
      name = "foo.value"
      value = "value"
    }
    bar = {
      name = "bar.value"
      value = "value"
    }
  }
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart"></a> [chart](#input\_chart) | chart name | `string` | n/a | yes |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | option to create namespace | `bool` | `true` | no |
| <a name="input_custom_values"></a> [custom\_values](#input\_custom\_values) | helmchart custom value | `map` | `null` | no |
| <a name="input_enable_custom_values"></a> [enable\_custom\_values](#input\_enable\_custom\_values) | option to enable custom values | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | release name | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | namespace name | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | chart repository | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_metadata"></a> [metadata](#output\_metadata) | status of the deployed release |

## Author:
- `Diego Oliveira`