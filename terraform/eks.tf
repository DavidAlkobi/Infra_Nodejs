module "eks" {
  source                         = "terraform-aws-modules/eks/aws"
  version                        = "19.16.0"
  cluster_name                   = var.cluster_name
  cluster_version                = "1.27"
  cluster_endpoint_public_access = true
  vpc_id                         = module.vpc.vpc_id

eks_managed_node_groups = {
ascode-cluster-wg = {
  min_size     = 1
  max_size     = 2
  desired_size = 1

  instance_types = ["t3.large"]
  capacity_type  = "ON_DEMAND"

  tags = {
    ExtraTag = "helloworld"
    }
  }
 }
}



