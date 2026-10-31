variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources into"
  default     = "eu-north-1"
}

variable "project_name" {
  type        = string
  description = "Name prefix used for resources and the Project tag"
  default     = "getting-started"
}

variable "instance_type" {
  type        = string
  description = "The type of instance to create"
  default     = "t3.micro"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"

  validation {
    condition     = can(cidrhost(var.vpc_cidr, 0))
    error_message = "vpc_cidr must be a valid IPv4 CIDR block."
  }
}

variable "az_count" {
  type        = number
  description = "Number of availability zones to spread subnets across"
  default     = 3
}
