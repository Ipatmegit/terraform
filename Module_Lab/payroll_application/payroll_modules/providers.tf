terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0"
    }
  }

  backend "s3" {
    bucket = var.aws_s3_bucket_name
    key    = "terraform.tfstate"
    region = var.aws_region
    dynamodb_table = "statelockpatrick"
}
}

provider "aws" {
  # Configuration options

  region = var.aws_region

}
