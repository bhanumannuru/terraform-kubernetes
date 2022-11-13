module "vpc" {
  source = "./modules/aws_vpc"
  vpc_cidr = var.vpc_cidr
  vpc_tag = var.vpc_tag
  
}

module "subnet" {
  source = "./modules/aws_subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_name = var.subnet_name
  subnet_zone = var.subnet_zone
  
}

module "sg" {
  source = "./modules/aws_sg"
  vpc_id = module.vpc.vpc_id
  sg_name = var.sg_name
  
}

module "nic" {
  source = "./modules/aws_nic"
  
  for_each = var.instance_config

  subnet_id   = module.subnet.subnet_id
  nic_name    = each.value.nic_name
  private_ips = each.value.private_ips
  
}

module "instance" {
  source = "./modules/aws_instance"
  depends_on = [
    module.nic
  ]

  for_each = var.instance_config

  instance_name = each.value.instance_name
  ami_name      = each.value.ami_name
  instance_type = each.value.instance_type
  instance_zone = each.value.instance_zone
  nic_id        = module.nic[each.key].nic_id
  
}
    
    hello this ;line 51 for checking

hello this ;line 51 for checking
hello this ;line 51 for checking
hello this ;line 55 for checking
hello this ;line 56 for checking

