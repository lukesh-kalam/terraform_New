provider "aws" {
  region = "us-east-1"
}

resource "aws_ec2_instance_state" "check" {
  instance_id = "i-02a8acd4e884d5ef2"
  state = "stopped"
  force = true
}

