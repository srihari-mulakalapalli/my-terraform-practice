provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "srihari" {
  ami = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  subnet_id = "subnet-0d03a8b184eaad131"
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "srihari-s3-demo"  
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}