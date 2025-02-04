 # Specify Terraform provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure AWS Provider
provider "aws" {
  region = "us-east-1"  
}

# Create an EC2 instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-038ff3475cbb62351"  
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstTerraformEC2"
  }
}
