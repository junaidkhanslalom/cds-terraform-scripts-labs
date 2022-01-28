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

output "my_s3_bucket_versioning" {
    value=aws_s3_bucket.my_s3_bucket.versioning[0].enabled 

}

output "my_s3_bucket_complete_details" {
    value=aws_s3_bucket.my_s3_bucket 

}