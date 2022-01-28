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
    bucket = "my-s3-bucket-juni-2022-cds" 
    versioning {
        enabled = true
    }  
  
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc_update"
  
}

