# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# provider block
provider "aws" {
  region = "us-east-1"
}

# # Create a VPC
# resource "aws_vpc" "example" {
#   cidr_block = "172.31.0.0/16"
# }

# resource "aws_s3_bucket" "example" {
#   bucket = "starcaster-bucket"

# #   tags = {
# #     Name        = "My bucket"
# #     Environment = "Dev"
#   }
}