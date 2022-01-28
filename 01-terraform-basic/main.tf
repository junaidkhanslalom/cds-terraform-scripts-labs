terraform {
    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~>3.0"
      }
    }
}

# Configure the AWS provider
provider "aws" {
    region = "us-east-1"
 # Version not needed 
}

# plan - execute 
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-juni-2311"   
  
}