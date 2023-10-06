module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name                 = var.VPC_NAME
  cidr                 = var.VpcCIDR
  azs                  = [var.Zone1, var.Zone2]
  private_subnets      = [var.PrivSub1CIDR, var.PrivSub2CIDR]
  public_subnets       = [var.PubSub1CIDR, var.PubSub2CIDR]
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  public_subnet_tags = {
  "kubernetes.io/role/elb" = 1
}


 private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  tags = {
    Terraform  = "true"
    Enviroment = "Prod"
  }

  vpc_tags = {
    Name = var.VPC_NAME
  }
}
