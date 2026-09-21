
  rg_config = {
    name     = "axion-rg"
    location = "centralIndia"
  }


  vnet_config = {
    name     = "app-vnet"
    rg_name  = "axion-rg"
    location = "centralIndia"
  }


    sub_config={
    name="app-subnet"
    rg_name  = "axion-rg"
    location = "centralIndia"
    }
    

  aks_config = {
    name     = "app-aks"
    rg_name  = "axion-rg"
    location = "centralIndia"
  }


  acr_config = {
    name     = "shashiacr123"
    rg_name  = "axion-rg"
    location = "centralIndia"
  }
postgress_config = {
  name     = "postgress-sql"
  rg_name  = "axion-rg"
  location = "centralIndia"
}

database_config = {
  name = "axiondb"
}