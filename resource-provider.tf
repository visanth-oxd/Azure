
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

# Replace "your_subscription_id" with your actual subscription ID
provider "azurerm" {
  alias           = "terrabio"
  subscription_id = "e6f042b9-1ee2-4091-9252-1ff2ad41fe9e"
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_provider_registration" "terrabio-registered-providers" {
  provider_names = [
    "Microsoft.Storage",
    "Microsoft.Compute",
    "Microsoft.Authorization",
    "Microsoft.Batch",
    "Microsoft.OperationalInsights",
    "Microsoft.OperationsManagement",
    "Microsoft.Insights",
    "Microsoft.Network",
    "Microsoft.DBforPostgreSQL",
    "Microsoft.ContainerService",
    "Microsoft.Relay",
    "Microsoft.ManagedIdentity",
  ]
}
