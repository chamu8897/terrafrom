terraform {
  backend "s3" {
    bucket        = "chamu-terraform-state"
    key           = "vpc/terraform.tfstate"
    region        = "eu-west-1"
    use_lockfile  = true
  }
}

provider "aws" {
  region = var.aws_region
}