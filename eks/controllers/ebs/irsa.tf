module "irsa" {
  source = "git@github.com:diego1277/terraform-kubernetes-addons.git//eks/irsa"
  openid_connect_arn = var.openid_connect_arn 
  openid_connect_url = var.openid_connect_url
  deploy_service_account = false
  service_account_name = var.enable_self_managed ? var.service_account_name : "ebs-csi-controller-sa"
  deploy_namespace = false
  namespace = var.enable_self_managed ? var.namespace : "kube-system"
  policy_arn = aws_iam_policy.this.arn
}
