terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.20.1"
    }
  }
}

provider "aws" {
  # Configuration options
    region  = "us-east-1"
  # access_key = "my-access-key"
  # secret_key = "my-secret-key"
  ## profile = "my-profile"
}

resource "aws_instance" "tf-ec2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    key_name = "firstkey"
    tags = {
      "Name" = "created-by-tf"
    }
}

resource "aws_s3_bucket" "tf-s3" {
  bucket = "terraform-jimmy-bucket-test"
#   acl = "private"
}