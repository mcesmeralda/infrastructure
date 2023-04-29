resource "aws_instance" "instancia-dev" {
  ami = "ami-0a695f0d95cefc163"
  instance_type = "t2.micro"
   vpc_security_group_ids = [aws_security_group.sg-dev.id]
  key_name = "lab_ec2"
  tags = {
    Name = "ec2-${local.env_project}"
    Project = local.project
    Environment = local.env_project
  }
}
resource "aws_eip" "lb" {
  instance = aws_instance.instancia-dev.id
  vpc      = true
  tags = {
    Name = "ec2-${local.env_project}"
    Project = local.project
    Environment = local.env_project
  }
}