resource "helm_release" "karpenter" {
    namespace        = "karpenter"
    create_namespace = true

    name       = "karpenter"
    repository = "oci://public.ecr.aws/karpenter"
    chart      = "karpenter"
    version    = var.chart_version

    set {
        name  = "serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
        value = aws_iam_role.karpenter_role.arn
    }

    set {
        name  = "settings.aws.clusterName"
        value = var.cluster_name
    }

    set {
        name  = "settings.aws.clusterEndpoint"
        value = var.cluster_endpoint
    }

    set {
        name  = "settings.aws.defaultInstanceProfile"
        value = var.instance_profile_name
    }

}



