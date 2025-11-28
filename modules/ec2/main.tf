# Pega a AMI mais recente do Amazon Linux 2 na sua região
data "aws_ami" "linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "app" {
  ami                    = data.aws_ami.linux.id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_ids[0]
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "${var.project_name}-${var.environment}-ec2"
  }
}
