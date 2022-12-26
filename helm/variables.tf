variable name {
  description = "nome da release"
  type        = string
}

variable repository {
  description = "repositorio do chart"
  type        = string
}

variable chart {
  description = "nome do chart"
  type        = string
}

variable namespace {
  description = "nome do namespace"
  type        = string
}

variable create_namespace {
  description = "definir se namespace sera criado"
  type        = bool
  default = true
}

variable enable_custom_values {
  description = "nome do namespace"
  type        = bool 
  default = false 
}

variable custom_values {
  description = "valores customizados para o helmchart"
  type = map
  default = null
}
