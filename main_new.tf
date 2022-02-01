provider "aws" {
  version = "~>2.0"
  region  = "us-east-1"
  }


resource "aws_instance" "dev" {
    count = 3
    ami = "ami-0e472ba40eb589f49"
    instance_type = "t2.micro"
    key_name = "new-terraform-aws"
    tags = {
        name = "dev${count.index}"
    }
    vpc_security_group_ids = ["sg-09e21abfbc42d1c8d"]
}

resource "aws_security_group" "new-acesso-ssh" {
  name        = "new-acesso-ssh"
  description = "new-acesso-ssh"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    #cidr_blocks      = ["163.116.224.113/32"]
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  #egress {
  #  from_port        = 0
  #  to_port          = 0
  #  protocol         = "-1"
  #  cidr_blocks      = ["0.0.0.0/0"]
  #  ipv6_cidr_blocks = ["::/0"]
  #}

  tags = {
    Name = "ssh"
  }
}
