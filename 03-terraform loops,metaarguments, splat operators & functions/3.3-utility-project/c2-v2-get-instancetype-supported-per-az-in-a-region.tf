#v2 - semi-dynamic


# Datasource
data "aws_ec2_instance_type_offerings" "my_ins_type2" {
  for_each = toset(["us-east-1a", "us-east-1b", "us-east-1e"])
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }
  filter {
    name   = "location"
    values = [each.key]
    #values = ["us-east-1e"]    
  }
  location_type = "availability-zone"
}



#output-1
# important: once for_each is set, its attributes must be accessed on specific instances
output "output_v2_1" {
    #value = data.aws_ec2_instance_type_offerings.my_ins_type1.instance_type
    value = [for t in data.aws_ec2_instance_type_offerings.my_ins_type2 : t.instance_types]
  
}

#output-2
# Create Map with Key as AZ and value as Instance tYpe suppoerterd
output "output_v2_2" {
    value = {
        for az, details  in data.aws_ec2_instance_type_offerings.my_ins_type2: az => details.instance_types
    }
}