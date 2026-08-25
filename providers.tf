# terraform {
#   cloud {
#     organization = "dayanand-hcp"
#     hostname     = "app.terraform.io"

#     workspaces {
#       name = "cli-driven-workflow-workspace"
#     }
#   }
# }

terraform {
  required_version = ">= 1.15.8"
  #   backend "s3" {
  #     bucket       = "terraform-state-bucket-daya"
  #     key          = "Prod/terraform.tfstate"
  #     region       = "us-east-1"
  #     use_lockfile = true
  #     profile      = "daya-plu"
  #     encrypt      = true
  #   }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.56.0"
    }
  }

  cloud {
    organization = "dayanand-hcp"
    workspaces {
      name = "cli-driven-workflow-workspace"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}