
resource "aws_instance" "my-ec2-vm" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t3.micro"
  user_data =  file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
  }
