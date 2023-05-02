#AWS Region
variable "aws_region" {
    description = "Region in which AWS resources will be created"
    type = string
    default = "us-east-1"  
}

variable "instance_type"{
    description = "EC2 instance type"
    type = string
    default = "t3.micro"

}

variable "instance_keypair"{
    description = " AWS ECW Key Pair that need to be associated with the instance"
    type = string
    default = "MacPro_Max"
}    


variable "vpc_id"{
    description = "VPC ID"
    type = string
    default = "vpc-02d05e9d75bb96531"
}    

