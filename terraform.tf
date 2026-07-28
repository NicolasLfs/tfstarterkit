terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.56.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-2"
  profile = "default"
  access_key = "your-access-key"
  secret_key = "your-secret-key"
}

resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
}