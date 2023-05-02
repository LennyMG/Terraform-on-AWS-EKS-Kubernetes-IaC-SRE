#Create VPC Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"                                       #this is a version constraint for a module
# version = "~> 4.0"

   # VPC Basic Details
  name = "vpc-dev"
  cidr = "10.0.0.0/16"   
  azs                 = ["us-east-1a", "us-east-1b"]       #list(string) 
  private_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets      = ["10.0.101.0/24", "10.0.102.0/24"]

 # Database Subnets
  create_database_subnet_group = true #bool = true or false
  create_database_subnet_route_table= true
  database_subnets    = ["10.0.151.0/24", "10.0.152.0/24"]


#create_database_nat_gateway_route = true 
#create_database_internet_gateway_route = true

 # NAT Gateways - Outbound Communication
 #this will enable just one NATgateway out of the two we are going to create 

  enable_nat_gateway = true
  single_nat_gateway = true

  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support = true

  public_subnet_tags = {
    Type = "public-subnets"
  }

database_subnet_tags = {
    Type = "database-subnets"
}


# IMPORTANT: ALL TAGS ARE REPRESENTED AS BLOCKS, THAT MEANS IT IS FOLLOWED BY ARGUMENTS
 tags = {
    Owner = "lenin"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "vpc-dev"
  }
}