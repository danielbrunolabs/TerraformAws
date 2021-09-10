terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {
    organization = "danielbrunolabs"

    workspaces {
      name = "github-terraform-aws"
    }
  }
}

provider "aws" {
  region         = var.region
}

module "terraform_backend" {
  source         = "./modules/terraform_backend"
  s3_bucket_name = var.aws_s3_bucket_name
}