provider "aws" {
  region = "us-east-1"
}


module "create_EC2" {
  source = "./create_ec2"
}

module "s3" {
  source = "./create_s3"
}

