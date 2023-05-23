resource "aws_vpc" "exam" {
  cidr_block           = var.exam_vpc_cidr
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "exam vpc"
  }
}

resource "aws_internet_gateway" "exam-igw" {
  vpc_id = aws_vpc.exam.id

  tags = {
    Name = "exam-igw"
  }
}

resource "aws_eip" "exam-nat-eip" {
  vpc = true
  tags = {
    Name = "exam-nat-eip"
  }
}

resource "aws_nat_gateway" "exam-nat-gw" {
  allocation_id = aws_eip.exam-nat-eip.id
  subnet_id     = aws_subnet.exam-public-a.id
  depends_on    = [aws_internet_gateway.exam-igw]
  tags = {
    Name = "exam-nat-gw"
  }
}