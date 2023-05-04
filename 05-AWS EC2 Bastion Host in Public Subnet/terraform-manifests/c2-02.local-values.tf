# Define Local Values in Terraform
locals {
  owners      = var.business_divsion                         #HR
  environment = var.environment                              #dev
  name        = "${var.business_divsion}-${var.environment}" #HR-dev
  common_tags = {
    owners = local.owners #HR 
    environment = local.environment
  }      
    # Add additional local value
    eks_cluster_name = "${local.name}-${var.cluster_name}"
}

