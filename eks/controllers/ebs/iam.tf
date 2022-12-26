resource "aws_iam_policy" "this" {
  name = "${var.service_account_name}_ebs_csi_controller_policy"
  description = "EBS CSI Controller IAM Policy"
  policy = file("${path.module}/policy.json")
}
