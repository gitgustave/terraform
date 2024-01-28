# Variable file
# use terraform plan -var="rsgname=GHRG01"    --> to change default variable
variable "location" {
    type = string
    description = "The location of the deployment"
    default = "East US2"
}

variable "rsgname" {
    type = string
    description = "Name of the resource group"
    default = "TerraformRG"
}

variable "StrgAccName" {
    type = string
    description = "Name of the storage account"
   # default = "TerraformStrgAccnt" # No need since this is global value
}

