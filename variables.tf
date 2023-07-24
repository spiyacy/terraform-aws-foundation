variable "aws_region" {
  type        = string
  description = "AWS Region in which to provision this VPC.<br><br>More Information is located here about the region option"
  ##default     = "us-east-1"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
  default     = "10.0.0.0/16"
}

#List of IPs allowed for inbound connectivity
variable "allowed_inbound_ips" {
  type        = list(string)
  description = "List of private subnets for this VPC."
  #Example: default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

#List of IPs allowed for inbound connectivity
variable "allowed_inbound_ports" {
  type        = list(string)
<<<<<<< HEAD
  description = "List of private subnets for this VPC.\nNew Line\n"
  #Example: ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
=======
  description = "List of private subnets for this VPC.\nNew Line\nExample: ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]"
>>>>>>> main
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets for this VPC."
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnets for this VPC."
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "enable_nat_gateway" {
  type    = bool
  default = false
}

variable "single_nat_gateway" {
  type    = bool
  default = false
}

variable "one_nat_gateway_per_az" {
  type    = bool
  default = false
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "prefix" {
  type        = string
  description = "Prefix for resources."
}
