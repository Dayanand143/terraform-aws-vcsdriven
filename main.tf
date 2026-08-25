resource "aws_vpc" "mainvpc" {
    cidr_block = var.vpc_cidr
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
        Name = "dev-main-vpc"
    }
}

resource "aws_subnet" "privatesubnet" {
    vpc_id = aws_vpc.mainvpc.id
    cidr_block = var.private_subnet_cidr
    availability_zone = var.private_subnet_az
    tags = {
        Name = "dev-main-subnet"
        Environment = "dev"
    }
}

resource "aws_subnet" "publicsubnet" {
    vpc_id = aws_vpc.mainvpc.id
    cidr_block = var.public_subnet_cidr
    availability_zone = var.public_subnet_az
    map_public_ip_on_launch = true
    tags = {
        Name = "dev-main-public-subnet"
        Environment = "dev"
    }
}