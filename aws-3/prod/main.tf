terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
  cluster_name = "webservers-prod"
  db_remote_state_bucket = "terraform-up-and-running-state-sg"
  db_remote_state_key = "prod/data-stores/mysql/terraform.tfstate"
}