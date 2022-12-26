module "helm" {
  source = "git@github.com:diego1277/terraform-kubernetes-addons.git//helm"
  name = "aws-ebs-csi-driver-${var.namespace}"
  namespace = var.namespace
  repository = "https://kubernetes-sigs.github.io/aws-ebs-csi-driver"
  chart = "aws-ebs-csi-driver"
  enable_custom_values = true
  custom_values = {
    image_repo = {
      name = "image.repository"
      value = var.aws_image_repository
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
      value = aws_iam_policy.this.arn
    }
  }
}
