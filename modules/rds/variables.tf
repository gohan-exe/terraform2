variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "db_name" {
  type    = string
  default = "appdb"
}

variable "username" {
  type    = string
  default = "admin"
}

variable "password" {
  type      = string
  sensitive = true
}

variable "security_group_ids" {
  type    = list(string)
  default = []
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}
