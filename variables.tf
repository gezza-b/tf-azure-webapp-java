variable "name" {
  description = "The name of the web app"
  default = "tfTomcat001"
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created."
  default = "rg_webapp"
}

variable "location" {
  description = "Region where the resources are created."
  default     = "australiaeast"
}

variable "plan_settings" {
  type        = "map"
  description = "Definition of the dedicated plan to use"

  default = {
    kind     = "Windows" # Does only exist on Windows in Australia
    size     = "S1"
    capacity = 1
    tier     = "Standard"
  }
}

variable "service_plan_name" {
  description = "The name of the App Service Plan, default = $web_app_name"
  default     = ""
}

variable "app_settings" {
  description = "A key-value pair of App Settings"
  default     = {}
}

variable "rg_tags" {
  type        = "map"
  description = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    environment = "DEV"
  }
}