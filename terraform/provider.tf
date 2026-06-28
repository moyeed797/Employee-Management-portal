terraform {                     # Terraform settings start here
  required_providers {          # Providers this project needs
    aws = {                     # We are using AWS
      source  = "hashicorp/aws" # Official AWS provider
      version = "~> 5.0"        # Use AWS Provider version 5.x
    }
  }
}

provider "aws" {       # Configure the AWS provider
  region = "us-east-2" # Use Ohio region
}
