# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" #this is a version constraint "similar to or higher than"
    }
  }
}

# provider block
provider "aws" {
  region = "us-east-1"
}

