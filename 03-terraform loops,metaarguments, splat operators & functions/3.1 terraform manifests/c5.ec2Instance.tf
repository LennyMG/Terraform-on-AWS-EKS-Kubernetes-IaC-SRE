# AWS EC2 Instance Terraform Variables
resource "aws_instance" "my-ec2-vm" {
  ami           = data.aws_ami.amzlinux2.id
  # instance_type = var.instance_type
  instance_type = var.instance_type_list[1] # for list
  # instance_type = var.instance_type_map["prod"] #for map 
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  count = 2
  tags = {
    "Name" = "Count-Demo-${count.index}"
  }
  }




