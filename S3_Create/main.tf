# Creating an S3 bucket
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "create_s3" {
  bucket = "my-lukesh-bucket-123"
  tags = {
    Name = "My Lukesh Bucket"
  }
}