resource "aws_db_instance" "this" {
  identifier          = "${var.project_name}-${var.environment}-rds"
  engine              = "mysql"
  instance_class      = var.instance_class
  allocated_storage   = 20
  db_name                = var.db_name
  username            = var.username
  password            = var.password
  vpc_security_group_ids = var.security_group_ids
  db_subnet_group_name   = aws_db_subnet_group.this.name
  skip_final_snapshot    = true
}

resource "aws_db_subnet_group" "this" {
  name       = "${var.project_name}-${var.environment}-subnet-group"
  subnet_ids = var.private_subnet_ids
}
