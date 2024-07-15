terraform {

  required_version = "~> 1.9.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.55"
    }
  }

  backend "s3" {
    bucket         = "wilson-calixto-002-tf"
    key            = "terraform.tfstate"
    dynamodb_table = "wilson-calixto-002-tf"
    region         = "us-east-1"
  }
}

# provider "aws" {
#   region                   = "us-east-1"
#   shared_config_files      = [".aws/config"]
#   shared_credentials_files = [".aws/credentials"]
#   profile                  = "iac"
# }
