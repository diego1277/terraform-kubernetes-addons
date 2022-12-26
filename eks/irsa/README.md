locals {
  irsa = {
       appa = {
         deploy_service_account = true
         service_account_name = "appa"
         deploy_namespace = true
         namespace = "appa"
         policy_arn = aws_iam_policy.appa.arn
      }
   }
}

module "irsa" {
  for_each = local.irsa
  source = "/Users/diego/terraform/terraform-modules-aws/eks/addons/irsa"
  openid_connect_arn = module.cluster.openid_connect_arn
  openid_connect_url = module.cluster.openid_connect_url
  deploy_service_account = each.value.deploy_service_account
  service_account_name = each.value.service_account_name
  deploy_namespace = each.value.deploy_namespace
  namespace = each.value.namespace
  policy_arn = each.value.policy_arn
}
