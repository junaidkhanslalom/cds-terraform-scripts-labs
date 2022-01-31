


variable "users" {
  default = {
    ravs : { country : "Netherlands", department : "ABC" },
    sats : { country : "Japan", department : "DEF" },
    junaid : { country : "Canada", department : "GHI" },
    tom : { country : "US", department : "JKL" },
    neil : { country : "Pakistan", department : "XYZ" }
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

provider "aws" {
  region = "us-east-1"

}

resource "aws_iam_user" "my_iam_users" {
  for_each = var.users
  name     = each.key
  tags = {
    #country: each.value
    country : each.value.country
    department : each.value.department

  }

}