provider "aws" {
  region = "us-east-1"
}

resource "aws_lb" "creatELB" {
  name = "Lukesh-LB1"
  load_balancer_type = "application"
  security_groups = ["sg-0fa33b6ab1a4cc386"]
  subnets = ["subnet-02079a5d352c3939e","subnet-0adb0be8cb97a0458"]
}

