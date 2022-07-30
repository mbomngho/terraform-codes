

# Create a VPC
resource "aws_vpc" "group_b_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
}

resource "aws_internet_gateway" "group_b_igw" {
  vpc_id = aws_vpc.group_b_vpc.id
}

resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.group_b_vpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "group b"
  }
}