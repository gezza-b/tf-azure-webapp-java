# ###############
# required values
# ###############

variable "name" {
  description = "The name of the web app"
  default = "mywebapp-test-0001"
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created."
  default = "myrg"
}

# ###############
# optional values
# ###############

variable "location" {
  description = "Region where the resources are created."
  default     = "australiaeast"
}

variable "plan_settings" {
  type        = "map"
  description = "Definition of the dedicated plan to use"

  default = {
    kind     = "Linux" # Linux or Windows
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
