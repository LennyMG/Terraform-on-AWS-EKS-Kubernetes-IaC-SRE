resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "dev VPC ssh"
  vpc_id      = var.vpc_id # if not spscified, terraform will create the resource in Default VPC3

  ingress {
    description      = "Allow Port 22" #ssh
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress { 
    description = "allow all ip and ports outbound"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
 
  }

  tags = {
    Name = "vpc-ssh"
  }
}

resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "dev VPC web"
  vpc_id      = var.vpc_id # if not spscified, terraform will create the resource in Default VPC3

  ingress {
    description      = "Allow Port 80" #http
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Allow Por 443" # http
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress { 
    description = "allow all ip and ports outbound"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
 
  }

  tags = {
    Name = "vpc-web"
  }
}
# Create a VPC
# resource "aws_vpc" "vpc_us-west-1" {
#   provider = aws.aws-west-1
#   cidr_block = "10.2.0.0/16"
#   tags = {
#     "Name" = "vpc-1"
#   }
# }