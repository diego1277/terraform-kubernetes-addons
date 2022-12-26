locals {
   service_account_annotations = merge(var.service_account_annotations,{
     "eks.amazonaws.com/role-arn":"${aws_iam_role.this.arn}"
  })
}
