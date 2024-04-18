provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "name" {
  ami             = "ami-0a3c3a20c09d6f377"
  instance_type   = "t2.micro"
  subnet_id       = "subnet-09dfafaaa5552391f"
  key_name        = "lukesh"
  security_groups = ["sg-03ea03843314adaee"]
  tags = {
    Name = "Instance Name"
  }
  lifecycle {
    create_before_destroy = true
  }
}

output "ec2-public" {
  value = aws_instance.name.public_ip
}

output "ec2_instance_state" {
  value = aws_instance.name.id
}



