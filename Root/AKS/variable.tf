variable "aks_config" {
  type = object({
    name     = string
    location = string
    rg_name  = string

  })

}
