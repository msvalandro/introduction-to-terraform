terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  region = "us-east-1"
  alias  = "us-east"
}

resource "aws_s3_bucket" "eu_west_2" {
  bucket = "some-random-bucket-name-12u8hfuqu83"
}

resource "aws_s3_bucket" "us_east-1" {
  bucket   = "some-random-bucket-name-12u7hfuqu83"
  provider = aws.us-east
}