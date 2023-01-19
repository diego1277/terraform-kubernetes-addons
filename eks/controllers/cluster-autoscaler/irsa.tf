module "irsa" {
  source = "github.com/diego1277/terraform-kubernetes-addons.git//eks/irsa"
  openid_connect_arn = var.openid_connect_arn 
  openid_connect_url = var.openid_connect_url
  deploy_service_account = false
  service_account_name = var.service_account_name
  deploy_namespace = false
  namespace = var.namespace
  policy_arn = aws_iam_policy.this.arn
}