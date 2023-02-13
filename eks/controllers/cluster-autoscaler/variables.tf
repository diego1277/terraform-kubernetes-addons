variable "cluster_name" {
  description = "cluster name"
  type = string  
}

variable service_account_name {
  description = "service account name"
  type        = string
  default = "cluster-autoscaler"
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