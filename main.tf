
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
 access_key = ${{ secrets.AWS_ACCESS_KEY_ID }}
 secret_key = ${{ secrets.AWS_SECRET_ACCESS_KEY }}
}
 
resource "aws_s3_bucket" "spacelift-test1-s3" {
   bucket = "spacelift-test1-s3"
   acl = "private"  
}
