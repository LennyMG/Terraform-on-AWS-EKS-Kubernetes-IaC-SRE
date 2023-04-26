# EC2 Instance Public IP with TOSET
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  #value = aws_instance.myec2vm.*.public_ip   # Legacy Splat
  #value = aws_instance.myec2vm[*].public_ip  # Latest Splat
  value = toset([
      for my-ec2-vm in aws_instance.my-ec2-vm : my-ec2-vm.public_ip
    ])  
}
# EC2 Instance Public DNS with TOSET
output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  #value = aws_instance.myec2vm[*].public_dns  # Legacy Splat
  #value = aws_instance.myec2vm[*].public_dns  # Latest Splat
  value = toset([
      for my-ec2-vm in aws_instance.my-ec2-vm : my-ec2-vm.public_dns
    ])    
}

# EC2 Instance Public DNS with TOMAP
output "instance_publicdns2" {
  description = "EC2 Instance Public DNS"
  #value = aws_instance.myec2vm[*].public_dns  # Legacy Splat
  #value = aws_instance.myec2vm[*].public_dns  # Latest Splat
  value = tomap ({ for az, instance in aws_instance.my-ec2-vm: az => instance.public_dns})
}