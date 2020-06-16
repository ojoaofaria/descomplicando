resource "aws_instance" "terraform" {
  count         = 4
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = var.key_name
  security_groups   = ["jotaef-sg"]

  tags = {
    Name = "maquina ${count.index}" 
  }
}