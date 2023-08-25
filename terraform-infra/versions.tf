terraform {
  required_version = "~> 1.5.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.13.0"
    }
  }
  backend "s3" {
    bucket = "shubhankar-terraform-state-bucket"
    key = local.terraform-state-bucket-name
    region = "eu-north-1"

    dynamodb_table = "terraform_state"
  }
}