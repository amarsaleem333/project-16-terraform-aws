variable "aws_region" {
  type        = string
  description = "Target AWS region for infrastructure deployment"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the main VPC"
  default     = "10.0.0.0/16"
}

variable "allowed_ssh_cidr" {
  type        = string
  description = "Trusted CIDR block permitted for SSH access on port 22"
}