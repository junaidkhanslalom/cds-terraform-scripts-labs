


variable "names" {
  default    = ["ravs","sats","junaid", "tom", "neil"] 
  

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
  # count = length(var.names)
  # name  = var.names[count.index]
  for_each = toset(var.names) # if you use count, your deletion and update is based on index, for each is value that is presented in index_key
  name = each.value

  #Storing as value is a best option 

}