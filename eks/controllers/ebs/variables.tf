variable cluster_name {
  description = "cluster name"
  type        = string
  default = null
}

variable enable_self_managed {
  description = "enable self managed(helm) addon"
  type        = bool
  default = false
}

variable service_account_name {
  description = "service account name"
  type        = string
  default = "ebs-csi-controller-sa"
}

variable openid_connect_arn {
  description = "openid connect provider arn"
  type = string
}

variable openid_connect_url {
  description = "openid connect provider url"
  type = string
}

variable namespace {
  description = "service account namespace"
  type = string
  default = "kube-system"
}
