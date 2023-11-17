variable "unique_name" {
  type    = string
  default = "example"
}

variable "aws_region" {
  type = string
}

variable "aws_ami" {
  type = string
}

variable "linux_subnet_id" {
  type = string
}

variable "linux_instance_type" {
  type    = string
  default = "t3.small"
}

variable "linux_secgroup_id" {
  type = string
}

variable "linux_ssh_keypair" {
  type = string
}

variable "create_instance" {
  description = "Determines whether to create the EC2 instace"
  type        = bool
  default     = true
}