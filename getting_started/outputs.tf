output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.app_server.private_ip
}

output "ami_id" {
  description = "AMI used by the EC2 instance"
  value       = data.aws_ami.amazon_linux_2023.id
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnets
}
