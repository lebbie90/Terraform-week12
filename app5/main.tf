
resource "aws_instance" "demo" {
  ami                         = "ami-051f7e7f6c2f40dc1"
  associate_public_ip_address = true
  availability_zone           = "us-east-1b"

  instance_type      = "t2.micro"
  ipv6_address_count = 0
  key_name           = "ec2key"
  monitoring         = false
  security_groups    = ["launch-wizard-1"]
  subnet_id          = "subnet-0f85e4d0f0a5380c5"
  tags = {
    Name = "imported server"
    env  = "dev"
    Team = "devops"
  }

}
  