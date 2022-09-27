terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 3.38"
    }
  }
  required_version = ">= 1.0"
}

locals {
  tags = merge(
    var.global_tags,
    var.local_tags
  )
}

provider "aws" {
  region = var.region
  default_tags {
    tags = local.tags
  }

}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.0"

  name = "${var.prefix}-vpc"
  cidr = var.vpc_cidr

  azs                    = ["${var.region}a", "${var.region}b", "${var.region}c"]
  private_subnets        = var.private_subnets
  public_subnets         = var.public_subnets
  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
  enable_dns_hostnames   = var.enable_dns_hostnames
}

resource "aws_security_group" "sg_ingress" {
  name        = "${var.prefix}_foundation_ingress_sg"
  description = "${var.prefix} Foundational Ingress Security Group"
  vpc_id      = module.vpc.vpc_id

  # vpc cidr block
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "sg_egress" {

  name        = "${var.prefix}_foundation_egress_sg"
  description = "${var.prefix} Foundational Egress Security Group"
  vpc_id      = module.vpc.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
