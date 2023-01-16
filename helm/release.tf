resource "helm_release" "this" {
  name       = var.name
  namespace = var.namespace
  repository = var.repository
  create_namespace = var.create_namespace
  chart      = var.chart
  dynamic "set" {
  for_each = length(keys(var.custom_values)) > 0 ? var.custom_values : {}
  content {
    name  = set.value["name"]
    value = set.value["value"]
    }
  }
}
