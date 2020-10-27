provider "aws" {
  profile = "emacs-berlin"
  region = "eu-central-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "jitsi" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "m5.large"
  key_name      = "emacs-berlin"
  vpc_security_group_ids = [aws_security_group.jitsi.id]

  root_block_device {
    volume_size = 100
  }

  tags = {
    Name = "jitsi"
  }

  lifecycle {
    ignore_changes = [ami, instance_type]
  }
}

resource "aws_eip" "jitsi" {
  instance = aws_instance.jitsi.id
  vpc      = true
}

resource "aws_security_group" "jitsi" {
  name   = "jitsi-security-group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 4443
    to_port     = 4443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 10000
    to_port     = 20000
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "emacs-berlin" {
  key_name = "emacs-berlin"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDN4UsYB9B0cdEPU2cPAHhnEiUR9fJwP0GD2OgXrgM/fkPrM86J5rxwu/MKuYJnOoU2R6VyB9bp2cJ1fCz8cnauKXNsqoNk+w2CJQyTJqrDTPeCxryd1P1PYY83VC9lkWMlchG6G1NmiPpae7AtsYhHVmJwCwtAeAtsLbL/xoF9aSpGOCnhhU5bhNhJG44/sOf+Ryv+QfGzDPwb2Zq+BmhuOEkGXWkWz594NiYtQO7a8FXWHD9KJHOJcTQp5rbMXfiQpJi0MKY5VBw53E2gPDpsSsjBOehPoAIRYrBzVnIaD8dOr43mLfqJPv6RUhumpRz7N1PyVQq06dOL5oVqra2lNrhChJJOS2jRfbYgi581c8qvmULJrBHKALJjhwgA9fdW8Lj/eIJ4sUF322wPw5IToQwqCs4Fh4AyqMRAvEnE3dbXHvufsRK3rs1ZJIJq37K3vURs2aiYpT8vYv+UlAvBYaYnrxCXdaORXbMZ6DbAg0vkmuHv08D7Qn2BOBpiFbc= emacs-berlin"
}
