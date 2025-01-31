output "vpc_output" {
  value = module.vpc
}

output "vpc_name" {
  value = module.vpc.name
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_arn" {
  value = module.vpc.vpc_arn
}

output "vpc_owner_id" {
  value = module.vpc.vpc_owner_id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "vpc_cidr_block" {
  value = module.vpc.vpc_cidr_block
}

output "ingress_security_group_id" {
  value = aws_security_group.sg_ingress.id
}

output "egress_security_group_id" {
  value = aws_security_group.sg_egress.id
}



