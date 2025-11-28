variable "project_name" {
  type        = string
  description = "Nome do projeto"
}

variable "environment" {
  type        = string
  description = "Ambiente (dev, prod, etc)"
}

variable "ssh_public_key" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "ami_id" {
  type    = string
  default = "ami-0f924dc71d44d23e2" # ou sua AMI
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}