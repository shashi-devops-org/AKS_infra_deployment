variable "postgress_config" {
    type = object({
      name = string
      rg_name= string
      location= string
    }) 
}

variable "database_config" {
    type = object({
      name = string 
    })
  
}