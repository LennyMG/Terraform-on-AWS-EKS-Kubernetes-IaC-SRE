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

# Create a VPC
# resource "aws_vpc" "vpc_us-west-1" {
#   provider = aws.aws-west-1
#   cidr_block = "10.2.0.0/16"
#   tags = {
#     "Name" = "vpc-1"
#   }
# }
# # resource "aws_s3_bucket" "example" {
# #   bucket = "starcaster-bucket"

# # #   tags = {
# # #     Name        = "My bucket"
# # #     Environment = "Dev"
# #   }
# }