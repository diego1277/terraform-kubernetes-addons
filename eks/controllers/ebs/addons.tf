resource "aws_eks_addon" "this" {
  count = var.enable_self_managed ? 0 : 1
  cluster_name = var.cluster_name
  addon_name   = "aws-ebs-csi-driver"
  service_account_role_arn = aws_iam_role.this[0].arn
}
