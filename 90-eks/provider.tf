terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.23.0"
    }
  }
  backend "s3" {
    bucket = "cmk-remote-state-dev-bucket-12" 
    key = "roboshop-terraform-eks-rules"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

# Region  for Provider and Infra
provider "aws" {
  region = "us-east-1"
}