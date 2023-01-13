resource "aws_iam_policy" "this" {
  name = "ebs_csi_controller_policy"
  description = "EBS CSI Controller IAM Policy"
  policy = file("${path.module}/policy.json")
}
