terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-up-and-running-state-sg"
    key            = "prod/data-stores/mysql/terraform.tfstate"
    dynamodb_table = "terraform-up-and-running-locks-sg"
    region         = "us-east-1"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

module "mysql" {
  source         = "../../../modules/data-stores/mysql"
  db_username    = var.db_username
  db_password    = var.db_password
  db_name        = var.db_name
  instance_class = var.instance_class
}
