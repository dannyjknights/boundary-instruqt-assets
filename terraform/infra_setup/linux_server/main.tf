terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "linux" {
  count                       = var.create_instance == true ? 2 : 0
  associate_public_ip_address = false
  ami                         = var.aws_ami
  subnet_id                   = var.linux_subnet_id
  instance_type               = var.linux_instance_type
  vpc_security_group_ids      = [var.linux_secgroup_id]
  key_name                    = var.linux_ssh_keypair
  user_data_replace_on_change = true
  tags = {
    Name   = "${var.unique_name}-linux"
    app    = "linux"
    region = "${var.aws_region}"
  }
}