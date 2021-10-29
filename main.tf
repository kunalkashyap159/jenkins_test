provider "aws" {
access_key = "AKIAVSB6AUBZYOJTCI6V"
secret_key = "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"
region = "us-east-1"
}
resource "aws_instance" "web" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_security_group" "my-web-ssh-sg2" {
  name = "my-web-ssh-sg2"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  } 
    ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  } 
tags = {
    Name = "my-web-ssh-sg2"
  }
}
