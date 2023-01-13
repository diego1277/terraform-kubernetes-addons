locals {
  aws_region = data.aws_region.current.name
  image_registries = jsondecode(file("${path.module}/image_registries.json"))
  image_registry = local.image_registries[local.aws_region] 
}
