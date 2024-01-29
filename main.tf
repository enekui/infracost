module "terraform-seqera-module" {
  source  = "github.com/seqeralabs/terraform-seqera-module"
  region  = "us-west-2"

  ## VPC
  vpc_name = "seqera-vpc"

  ## EKS Cluster Configurations
  create_eks_cluster = true
  cluster_name    = "seqera-terraform-aws"
  cluster_version = "1.27"

  ## EC2 Instance
  create_ec2_instance = false

  create_redis_cluster = false
  create_db_cluster = false

  create_seqera_service_account = true
  enable_aws_ebs_csi_driver = true
  

  default_tags = {
    Environment = "development"
    ManagedBy   = "Terraform"
    Product     = "Seqera"
    CreatedBy   = "DevOps"
  }
}

output "database_url" {
  value = module.terraform-seqera-module.database_url
}

output "redis_url" {
  value = module.terraform-seqera-module.redis_url
}

output "seqera_irsa_role_name" {
  value = module.terraform-seqera-module.seqera_irsa_role_name
}

output "seqera_s3_access_logs_bucket_name" {
  value = module.terraform-seqera-module.access_logs_s3_bucket_name
}