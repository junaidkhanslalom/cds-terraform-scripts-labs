

terraform {
  backend "s3" {
    bucket         = "dev-applications-backend-state-junaid-abc"
    key            = "0dev/7-backend-state/users/backend-state"
    region         = "us-east-1"
    # dynamodb_table = "dev_application_locks"
    encrypt        = true
  }
}

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

resource "aws_iam_user" "my_iam_user" {
  name = "${terraform.workspace}_my_iam_user_abc"

}
# plan - execute 


