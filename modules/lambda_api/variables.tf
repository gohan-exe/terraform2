variable "project_name" {}
variable "environment" {}
variable "vpc_subnet_ids" {
  type = list(string)
}
variable "security_group_ids" {
  type = list(string)
}
variable "lambda_bucket" {}
variable "lambda_object_key" {}
