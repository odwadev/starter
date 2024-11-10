# create a terraform code to create VPC and 2 public and private subnets

provider "aws" {
    region = "us-east-2"
}

resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "main-vpc"
    }
}

# resource "aws_subnet" "public_1" {
#     vpc_id            = aws_vpc.main.id
#     cidr_block        = "10.0.1.0/24"
#     map_public_ip_on_launch = true

#     tags = {
#         Name = "public-subnet-1"
#     }
# }

# resource "aws_subnet" "public_2" {
#     vpc_id            = aws_vpc.main.id
#     cidr_block        = "10.0.2.0/24"
#     map_public_ip_on_launch = true

#     tags = {
#         Name = "public-subnet-2"
#     }
# }

# resource "aws_subnet" "private_1" {
#     vpc_id     = aws_vpc.main.id
#     cidr_block = "10.0.3.0/24"

#     tags = {
#         Name = "private-subnet-1"
#     }
# }

# resource "aws_subnet" "private_2" {
#     vpc_id     = aws_vpc.main.id
#     cidr_block = "10.0.4.0/24"

#     tags = {
#         Name = "private-subnet-2"
#     }
# }

