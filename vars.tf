variable "amis" {
    type = map
  
    default = {
        "us-east-1" = "ami-0e472ba40eb589f49"
        "us-east-2" = "ami-0231217be14a6f3ba"
    }
}

variable "cdirs_acesso_remoto" {
    type = list
    default = ["163.116.224.115/32","0.0.0.0/0"]
  
}

variable "key_name" {
    default = "danilopacheco-aws"
  
}