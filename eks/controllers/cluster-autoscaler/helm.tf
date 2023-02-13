module "helm" {
  source = "github.com/diego1277/terraform-kubernetes-addons.git//helm"
  name = "aws-cluster-autoscaler"
  namespace = var.namespace
  repository = "https://kubernetes.github.io/autoscaler"
  chart = "cluster-autoscaler"
  custom_values = {
    cloud_provider = {
      name = "cloudProvider"
      value = "aws"
    }
    override = { 
      name  = "fullnameOverride"
      value = "aws-cluster-autoscaler"
    }    
    autodiscovery = {
      name = "autoDiscovery.clusterName"
      value = var.cluster_name
    }
    aws_region = {
      name = "awsRegion"
      value = data.aws_region.current.name
    }
    create_sa = {
      name = "rbac.serviceAccount.create"
      value = "true"
    }
    sa_name = {
      name = "rbac.serviceAccount.name"
      value = var.service_account_name
    }
    sa_annotation = {
      name = "rbac.serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
      value = module.irsa.role_arn
    }    
  }
}
