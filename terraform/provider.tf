terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Regional setup (Mumbai region is best for us)
provider "aws" {
  region = "ap-south-1" 
}