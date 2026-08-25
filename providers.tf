terraform {
  required_version = ">= 1.15.8"
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