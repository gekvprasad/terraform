provider “aws” {
access_key = “my_access_key”
secret_key = “my_secret_key”
region = “ap-southeast-2”
}
resource “aws_security_group” “allow_ssh” {
name = “allow_all”
description = “Allow inbound SSH traffic from my IP”
vpc_id = “VPC-ID”

ingress {
from_port = 22
to_port = 22
protocol = “tcp”
cidr_blocks = [“6x.24x.5x.167/32”]
}

tags {
Name = “Allow SSH”
}
}
