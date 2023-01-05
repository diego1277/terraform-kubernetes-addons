resource "aws_iam_policy" "this" {
  name = var.enable_self_managed ? "${var.service_account_name}_ebs_csi_controller_policy" : "${var.cluster_name}_ebs_csi_controller_policy"
  description = "EBS CSI Controller IAM Policy"
  policy = file("${path.module}/policy.json")
}
