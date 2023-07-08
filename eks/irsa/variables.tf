variable service_account_name {
  description = "service account name"
  type        = string
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
}

variable namespace_labels {
  description = "namespace labels"
  type = map
  default = {}
}

variable namespace_annotations {
  description = "namespace annotations"
  type = map
  default = {}
}

variable service_account_labels {
  description = "service account labels"
  type = map
  default = {}
}

variable service_account_annotations {
  description = "service account annotations"
  type = map
  default = {}
}

variable policy_arn {
  description = "policy arn"
  type = string
}

variable deploy_namespace {
  description = "deploy namespace"
  type = bool
  default = false
}

variable deploy_service_account {
  description = "deploy service account"
  type = bool
  default = false
}
