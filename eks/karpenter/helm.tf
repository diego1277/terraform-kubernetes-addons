resource "helm_release" "karpenter" {
    namespace        = "karpenter"
    create_namespace = true

    name       = "karpenter"
    repository = "https://charts.karpenter.sh"
    chart      = "karpenter"
    version    = "0.13.1"

    set {
        name  = "serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
        value = aws_iam_role.karpenter_role.arn
    }

    set {
        name  = "clusterName"
        value = var.cluster_name
    }

    set {
        name  = "clusterEndpoint"
        value = var.cluster_endpoint
    }

    set {
        name  = "aws.defaultInstanceProfile"
        value = var.instance_profile_name
    }

}
