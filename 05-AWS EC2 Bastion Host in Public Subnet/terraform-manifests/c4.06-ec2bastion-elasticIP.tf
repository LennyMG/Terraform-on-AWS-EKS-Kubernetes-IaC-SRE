# Create Elastic IP for Bastion Host
# Resource - depends_on Meta-Argument
resource "aws_eip" "bastion_eip" {
  depends_on = [ module.ec2_public, module.vpc] #EIPs require IGW to be created. Module.vpc will prove such element. 
  instance = module.ec2_public.id
  vpc      = true
  tags = local.common_tags
}