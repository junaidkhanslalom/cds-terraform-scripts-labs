variable "environment" {
    default = "default"
}


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

resource "aws_iam_user" "my_iam_user" {
    name = "${local.iam_user_extension}_${var.environment}"
  
}

locals {
    iam_user_extension = "my_iam_user_abc"
}