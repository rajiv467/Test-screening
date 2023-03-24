# Provider Configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "screening-process-terraform-statefiles"
    key    = "dev/project1-vpc/terraform.tfstate"
    region = "us-east-1" 
    # secret_key = "5li7QCa69yYaPnvc3a1aqD53jM2wnWZQu6rKGK4A"
    # access_key = "AKIA4E5YNEF5Z5MXYWOM"  
}
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  # secret_key = "5li7QCa69yYaPnvc3a1aqD53jM2wnWZQu6rKGK4A"
  # access_key = "AKIA4E5YNEF5Z5MXYWOM"
}