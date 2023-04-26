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

variable "instance_type_list" {
    description = "EC2 Instance Type"
    type = list(string)
    default = ["t3.micro", "t3.small", "t3.large"]

}

variable "instance_type_map" {
    description = "EC2 Instance Type"
    type = map(string)
    default = {
        "dev" = "t3.micro", 
        "qa" = "t3.small"
        "prod" = "t3.large"

    }

}
