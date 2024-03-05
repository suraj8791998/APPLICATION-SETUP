variable "ingress" {
  default = [
    {
    description = "HTTPS ingress"

   from_port   = 443

   to_port     = 443

   protocol    = "tcp"

   cidr_blocks = ["0.0.0.0/0"]
    },
    {
    description = "HTTPS ingress"

   from_port   = 22

   to_port     = 22

   protocol    = "tcp"

   cidr_blocks = ["0.0.0.0/0"]
    },
    {
    description = "HTTPS ingress"

   from_port   = 80

   to_port     = 80

   protocol    = "tcp"

   cidr_blocks = ["0.0.0.0/0"] 
    },
    {
    description = "HTTPS ingress"

   from_port   = 8080

   to_port     = 8080

   protocol    = "tcp"

   cidr_blocks = ["0.0.0.0/0"] 
    }
  ]
}

variable "project_name" {
  default = "Roboshop"
}

variable "common_tags" {
  default = {
    Environment = "dev"
    terraform = true
    project = "roboshop"
  }
}

variable "instance" {
  default = {
    Jenkins = "t3.medium"
    Node = "t2.micro"
  }
}

