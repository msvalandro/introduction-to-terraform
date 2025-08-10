terraform {
  required_version = "~> 1.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

# AMI ID - eu-west-2: ami-0c36b0523e1392e84
# AMI ID - eu-west-2: ami-0a7e505f26c66ccb1
provider "aws" {
  region = "eu-west-2"
}
