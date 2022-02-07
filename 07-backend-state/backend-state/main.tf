terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
  # Version not needed 
}

// S3 Bucket
resource "aws_s3_bucket" "enterprise-backend_state" {
  bucket = "dev-applications-backend-state-junaid-abc"

  lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"

      }
    }
  }


}

// Locking - DynamoDB
// resource "aws_dynamodb_table" "enterprise_backend_lock" {
// name = "dev-application-locks"
// billing_mode = "PAY_PER_REQUEST"


//   hash_key = "LockID"
//    attribute {
//        name = "LockID"
//        type = "S"

//  }

// get lock, release state

