provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "name" {
  ami             = var.ami
  instance_type   = "t2.micro"
  subnet_id       = var.subnet_id
  key_name        = "lukesh"
  security_groups = ["sg-03ea03843314adaee"]
  tags = {
    Name = "Instance Name"
  }
  lifecycle {
    create_before_destroy = true
  }
}