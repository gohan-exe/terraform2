output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

output "ecs_cluster_name" {
  value = module.ecs.cluster_name
}

output "ec2_public_ips" {
  value = module.ec2.instance_public_ip
}
