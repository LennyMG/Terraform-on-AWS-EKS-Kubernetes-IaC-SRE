
# Output For Loop with list
output "for_output_list" {
    description = "For Loop with List"
    value = [for instance in aws_instance.my-ec2-vm: instance.public_dns]  
}

# out-put For Loop with map
output "for_output_map1" {
    description = "For Loop with Map"
    value = {for instance in aws_instance.my-ec2-vm: instance.id => instance.public_dns}  
}


# out-put For Loop with map advanced
output "for_output_map2" {
    description = "For Loop with Map - Advanced"
    value = {for c, instance in aws_instance.my-ec2-vm: c => instance.public_dns}  
}

# out-put Legacy Splat Operator latest) - Returns the List
output "legacy_splat_instance_publicdns" {
    description = "Legacy Splat Operator"
    value = aws_instance.my-ec2-vm.*.public_dns

}


# Output Latest Generalized Splat Operator
output "latest_splat_instance_publicdns" {
    description = "Generalized latest Splat Operator"
    value = aws_instance.my-ec2-vm[*].public_dns

}



