
terraform {
  cloud {
    organization = "sfurlani"

    workspaces {
      name = "codespaces-express"
    }
  }
}
provider "aws" {
 region     = "us-east-1"
}
 
resource "aws_s3_bucket" "sfurlani1" {
   bucket = "sfurlani1"
   acl = "private"  
}
