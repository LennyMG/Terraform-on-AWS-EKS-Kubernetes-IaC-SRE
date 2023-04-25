# terraform Output Values
# EC2 Instance Public IP

output "instance_public_ip"{
    description = "EC2 instance public IP"
    value = aws_instance.my-ec2-vm.public_ip
}
# EC@ I/nstance Public DNS


output "instance_public_dns"{
    description = "EC2 instance public DNS "
    value = aws_instance.my-ec2-vm.public_dns
}