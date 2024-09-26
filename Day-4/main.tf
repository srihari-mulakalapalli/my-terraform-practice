provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "srihari" {
  ami = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  subnet_id = "subnet-0d03a8b184eaad131"
}