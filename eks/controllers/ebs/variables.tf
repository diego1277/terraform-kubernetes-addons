variable cluster_name {
  description = "cluster name"
  type        = string
}

variable enable_self_managed {
  description = "enable self managed(helm) addon"
  type        = bool
  default = false
}

variable service_account_name {
  description = "service account name"
  type        = string
  default = ""
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

variable aws_image_repository {
  description = "aws image repository"
  type = string
  default = "602401143452.dkr.ecr.us-east-1.amazonaws.com"
}
