terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.69.0"
    }
  }
  # backend "s3"{
  #  bucket = "remote-state-90s-dev"
  #  key = "roboshop-dev-vpc.tfstate"
  #  region = "us-east-1"
  #  encrypt = true
  #  #use_lockfile = true
  # }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

