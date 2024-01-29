terraform {
  backend "s3" {
    bucket  = "seqera-terraform-development-backend"
    key     = "terraform-seqera-module/terraform"
    region  = "eu-west-2"
    profile = "development"
  }
}