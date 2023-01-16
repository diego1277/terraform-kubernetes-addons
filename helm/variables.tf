variable name {
  description = "release name"
  type        = string
}

variable repository {
  description = "chart repository"
  type        = string
}

variable chart {
  description = "chart name"
  type        = string
}

variable namespace {
  description = "namespace name"
  type        = string
}

variable create_namespace {
  description = "option to create namespace"
  type        = bool
  default = true
}

variable custom_values {
  description = "helmchart custom values"
  type = map
  default = {}
}