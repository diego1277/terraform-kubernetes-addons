resource "kubernetes_namespace_v1" "this" {
  count = var.deploy_namespace ? 1 : 0
  metadata {
    annotations = var.namespace_annotations
    labels = var.namespace_labels
    name = var.namespace
  }
}
