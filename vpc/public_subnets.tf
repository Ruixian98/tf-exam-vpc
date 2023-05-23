resource "aws_subnet" "exam-public-a" {
  vpc_id                  = aws_vpc.exam.id
  cidr_block              = var.exam_public_a_cidr
  map_public_ip_on_launch = "false"
  availability_zone       = var.availability_zone_a

  tags = {
    Name = "exam-public-a"
    Tier = "public"
  }
}

resource "aws_subnet" "exam-public-b" {
  vpc_id                  = aws_vpc.exam.id
  cidr_block              = var.exam_public_b_cidr
  map_public_ip_on_launch = "false"
  availability_zone       = var.availability_zone_b

  tags = {
    Name = "exam-public-b"
    Tier = "public"
  }
}

resource "aws_route_table" "exam-public-rt" {
  vpc_id = aws_vpc.exam.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.exam-igw.id
  }
  tags = {
    Name = "exam-public-rt"
  }
  depends_on = [aws_internet_gateway.exam-igw]
}