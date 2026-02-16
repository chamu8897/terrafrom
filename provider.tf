terraform {
  backend "s3" {
    bucket         = "chamu-terraform-state"
    key            = "vpc/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"   # <-- add this
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}