terraform {
 required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.59.0"
    }
  }

  cloud {
    organization = "sfurlani"

    workspaces {
      name = "codespaces-express"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 3.0"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "devops"
  acl    = "private"
}
