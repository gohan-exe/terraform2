# === MÓDULO VPC ===
module "vpc" {
  source       = "./modules/vpc"
  project_name = var.project_name
  environment  = var.environment
}

# === MÓDULO S3 ===
module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
  environment  = var.environment
  bucket_name  = "meu-projeto-dev-bucket-332848643280"
}

# === MÓDULO EC2 ===
module "ec2" {
  source             = "./modules/ec2"
  project_name       = var.project_name
  environment        = var.environment
  public_subnet_ids  = module.vpc.public_subnet_ids
  security_group_ids = module.vpc.default_sg_id != "ev2_security-cavalo" ? [module.vpc.default_sg_id] : []
}

# === MÓDULO RDS ===
module "rds" {
  source              = "./modules/rds"
  project_name        = var.project_name
  environment         = var.environment
  instance_class      = "db.t3.micro"
  db_name             = "appdb"
  username            = "admin"
  password            = var.db_password
  security_group_ids  = module.vpc.default_sg_id != null ? [module.vpc.default_sg_id] : []
  private_subnet_ids  = module.vpc.private_subnet_ids
  vpc_id = module.vpc.vpc_id
}

# === MÓDULO ECS ===
module "ecs" {
  source             = "./modules/ecs"
  project_name       = var.project_name
  environment        = var.environment
  vpc_id             = module.vpc.vpc_id
  public_subnet_ids  = module.vpc.public_subnet_ids
}

# === MÓDULO Lambda ===
module "lambda_api" {
  source             = "./modules/lambda_api"
  project_name       = var.project_name
  environment        = var.environment
  vpc_subnet_ids     = module.vpc.private_subnet_ids
  security_group_ids = module.vpc.default_sg_id != null ? [module.vpc.default_sg_id] : []

  lambda_bucket      = "meu-projeto-dev-bucket-332848643280"
  lambda_object_key  = "lambda.zip"
}




# === Key Pair para EC2 ===
resource "aws_key_pair" "deployer" {
  key_name   = "${var.project_name}-${var.environment}-key"
  public_key = var.ssh_public_key
}
