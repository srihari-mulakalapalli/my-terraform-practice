terraform {
  backend "s3" {
    bucket         = "srihari-s3-demo" # change this
    key            = "srihari/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_lock"
    }
}