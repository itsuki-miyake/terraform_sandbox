variable "project_id" { type = string }
variable "gcp_region" { type = string }

variable "simple_bindings" {
  type = map(list(string))
}

variable "conditional_bindings" {
  type = list(object({
    role        = string
    members     = list(string)
    title       = string
    description = string
    expression  = string
  }))
}
