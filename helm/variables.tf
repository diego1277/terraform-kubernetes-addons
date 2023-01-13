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

variable enable_custom_values {
  description = "option to enable custom values"
  type        = bool 
  default = false 
}

variable custom_values {
  description = "helmchart custom value"
  type = map
  default = null
}
