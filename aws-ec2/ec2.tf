provider "aws" {
    region = "us-east-1"
}

resource "aws-instance" "ec2" {
    ami = "ami-0a695f0d95cefc163"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform-ec2"
    }
  }