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
 # Version not meeded 
}