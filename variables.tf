variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type = string
  default = "10.0.5.0/24"
}

variable "private_subnet_az" {
  description = "The availability zone for the private subnet"
  type = string
  default = "us-east-1a"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type = string
  default = "10.0.10.0/24"
}

variable "public_subnet_az" {
  description = "The availability zone for the public subnet"
  type = string
  default = "us-east-1a"
}

