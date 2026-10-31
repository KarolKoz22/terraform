# Terraform

Hands-on Terraform configurations built while preparing for the HashiCorp Terraform Associate exam.

## getting_started

Provisions a basic AWS setup in `eu-north-1`:

- A VPC (via [`terraform-aws-modules/vpc/aws`](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws)) with public and private subnets spread across three availability zones and a single NAT gateway
- An Amazon Linux 2023 EC2 instance in a private subnet with IMDSv2 enforced and an encrypted root volume

State is stored remotely in HCP Terraform (organization `terraform-associate-exam-kakozlow`, workspace `terraform`).

### Usage

```sh
cd getting_started
terraform login   # once, to authenticate with HCP Terraform
terraform init
terraform plan
terraform apply
```

### Inputs

| Name            | Description                                   | Default           |
|-----------------|-----------------------------------------------|-------------------|
| `aws_region`    | AWS region to deploy resources into           | `eu-north-1`      |
| `project_name`  | Name prefix used for resources and tags       | `getting-started` |
| `instance_type` | EC2 instance type                             | `t3.micro`        |
| `vpc_cidr`      | CIDR block for the VPC                        | `10.0.0.0/16`     |
| `az_count`      | Number of availability zones to use           | `3`               |

### Outputs

`instance_id`, `instance_private_ip`, `ami_id`, `vpc_id`, `private_subnet_ids`, `public_subnet_ids`

> **Note:** the NAT gateway and EC2 instance incur AWS charges. Run `terraform destroy` when finished.
