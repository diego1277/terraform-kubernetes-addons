module "helm" {
  count = var.enable_self_managed ? 1 : 0
  source = "git@github.com:diego1277/terraform-kubernetes-addons.git//helm"
  name = "aws-ebs-csi-driver"
  namespace = var.namespace
  repository = "https://kubernetes-sigs.github.io/aws-ebs-csi-driver"
  chart = "aws-ebs-csi-driver"
  custom_values = {
    image_repo = {
      name = "image.repository"
      value = "${local.image_registry}/eks/aws-ebs-csi-driver"
    }
    sa_create = {
      name = "controller.serviceAccount.create"
      value = "true"
    }
    sa_name = {
      name = "controller.serviceAccount.name"
      value = var.service_account_name
    }
    sa_annotation = {
      name = "controller.serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
      value = module.irsa.role_arn
    }
  }
}
