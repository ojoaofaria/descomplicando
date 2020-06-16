variable "ami" {
    type = string
    description = "Indicação de AMI"
    default     =  "ami-085925f297f89fce1"
}

variable "key_name" {
    type = string
    description = "Indicação da Chave"
    default     = "terraform-aws"
}