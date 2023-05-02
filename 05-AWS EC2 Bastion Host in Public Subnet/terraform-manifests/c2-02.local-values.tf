# Define Local Values in Terraform
locals {
  owners = var.business_divsion #HR
  environment = var.environment #dev
  name = "${var.business_divsion}-${var.environment}" #HR-dev
  common_tags = {
    owners = local.owners#HR 
#     environment = local.environment dev    
  }
}

