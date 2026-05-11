terraform {
  required_version = ">=1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }


backend "s3" {
    bucket = "devopsdemo-hpl3w5"
    key = "vpc/dev/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    use_lockfile = true
  }
 }

provider "aws" {
  region = "ap-south-1"
}
