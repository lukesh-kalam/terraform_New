provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "create_s3" {
  bucket = "my-123-kumar-22"
  tags={
    Name = "my-123-kumar-22"
  }
}