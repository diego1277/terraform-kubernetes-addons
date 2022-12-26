resource "helm_release" "this" {
  name       = var.name
  namespace = var.namespace
  repository = var.repository
  create_namespace = var.create_namespace
  chart      = var.chart
  dynamic "set" {
  for_each = var.enable_custom_values ? var.custom_values : {}
  content {
    name  = set.value["name"]
    value = set.value["value"]
    }
  }
}
