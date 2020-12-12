provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_instance" "terraform" {
  count         = 3
  ami           = var.ami
  instance_type = "t2.small"
  key_name      = var.key_name
  security_groups   = ["ansible"]

  tags = {
    Name = " ${count.index}" 
  }
}

output "instance_ip_addr" {
  value = aws_instance.terraform[*].public_ip
}

variable "ami" {
    type = string
    description = "Indicação de AMI"
    default     =  "ami-07dd19a7900a1f049"
}

variable "key_name" {
    type = string
    description = "Indicação da Chave"
    default     = "ansible"
}