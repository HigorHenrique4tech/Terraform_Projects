provider "azurerm" {
    features {}
    subscription_id = "c4fd6aba-d646-4902-9146-3d3e04c1ab4e"
    client_id = "00bf3a14-8def-4c51-af9d-138255c2c6f1"
    client_secret = "pgO8Q~3MurRWU8fskLgEdGfZ6a-4bQzG_FKe~bGX"
    tenant_id = "c2505938-1bbf-4262-b45b-bcb6a2795599"  
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.50.0"
    }
  }
}


