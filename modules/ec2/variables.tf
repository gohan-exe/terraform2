variable "project_name" {}
variable "environment" {}

variable "ami_id" {
  default = "ami-0892a9ba8b49b20b0" # us-east-2
}

variable "instance_type" {
  default = "t2.micro"
}

variable "public_subnet_ids" { type = list(string) }
variable "security_group_ids" { type = list(string) }
