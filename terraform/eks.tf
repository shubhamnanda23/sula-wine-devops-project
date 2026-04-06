module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0" # Latest module version use karo

  cluster_name    = "sula-wine-cluster"
  cluster_version = "1.31" # Updated version (Check AWS for latest)

  vpc_id                         = module.vpc.vpc_id
  subnet_ids                     = module.vpc.private_subnets
  cluster_endpoint_public_access = true

  # Warning fix: Naya EKS module aws_auth manage nahi karta by default
  enable_cluster_creator_admin_permissions = true 

  eks_managed_node_groups = {
    nodes = {
      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_types = ["t3.small"]
    }
  }

  tags = {
    Environment = "dev"
    Project     = "sula-wine"
  }
}