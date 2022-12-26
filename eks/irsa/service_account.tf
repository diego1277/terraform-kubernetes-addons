resource "kubernetes_service_account" "this" {
  count = var.deploy_service_account ? 1 : 0
  metadata {
    name = var.service_account_name
    namespace = var.namespace
    annotations = local.service_account_annotations
  }
}
