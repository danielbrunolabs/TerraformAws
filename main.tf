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
  region = vars.region
  aws_access_key = vars.aws_access_key
  aws_secret_key = vars.aws_secret_key
}

module "terraform_backend" {
  source         = "./modules/terraform_backend"
  s3_bucket_name = vars.aws_s3_bucket_name
}