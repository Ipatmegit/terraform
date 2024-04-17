terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0"
    }
  }


backend "s3" {
    bucket = "mypatbucket2"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statelockpatrick"

}
}

 