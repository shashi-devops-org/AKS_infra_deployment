module "rg" {
  source   = "../Root/rg"
 rg_config= var.rg_config
}


module "net" {
  depends_on  = [module.rg]
  source      = "../Root/network"
  vnet_config = var.vnet_config
  sub_config  = var.sub_config

}

module "aks" {
  depends_on          = [module.rg, module.net]
  source              = "../Root/AKS"
 aks_config = var.aks_config
}
module "acr" {
  depends_on          = [module.rg, module.aks]
  source              = "../Root/ACR"
  acr_config = var.acr_config
}
module "postgress" {
  source           = "../Root/Postgress_datbase"
  postgress_config = var.postgress_config
  database_config  = var.database_config
}