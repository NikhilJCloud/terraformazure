variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "cidr block"
  default = string
}

variable "private_subnet_cidr" {
  description = "private subnet CIDR block"
  type        = list(string)
}

variable "public_subnet_cidr" {
  description = "private subnet CIDR block"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}