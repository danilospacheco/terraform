resource "aws_security_group" "estudo-acesso-ssh" {
  name        = "estudo-acesso-ssh"
  description = "estudo-acesso-ssh"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.cdirs_acesso_remoto
    #cidr_blocks      = ["0.0.0.0/0"]
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

resource "aws_security_group" "estudo-acesso-ssh-us-east-2" {
  provider = aws.us-east-2
  name        = "estudo-acesso-ssh"
  description = "estudo-acesso-ssh"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.cdirs_acesso_remoto
    #cidr_blocks      = ["0.0.0.0/0"]
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