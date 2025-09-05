terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "david_server_terr2" {
  ami = "ami-0f70b01eb0d5c5caa"

  instance_type = "t3.micro"

  tags = {
    Name = "david_server_terr2"
  }
}

output "server_name" {
  value = aws_instance.david_server_terr2.tags.Name
}
