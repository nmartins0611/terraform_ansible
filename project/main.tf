terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-2"
}

resource "aws_instance" "basic_rhel" {
  ami           = "ami-08d9bb4bfe39be5c2"
  instance_type = "t2.micro"

  }
