terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.14.1"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance1" {
  ami           = "ami-0f9708d1cd2cfee41"
  instance_type = "t2.nano"

  tags = {
    Name = "MyFirstInstance"
  }
  
}