resource "aws_subnet" "exam-private-a" {
  vpc_id                  = aws_vpc.exam.id
  cidr_block              = var.exam_private_a_cidr
  map_public_ip_on_launch = "false"
  availability_zone       = var.availability_zone_a

  tags = {
    Name = "exam-private-a"
    Tier = "private"
  }
}

resource "aws_subnet" "exam-private-b" {
  vpc_id                  = aws_vpc.exam.id
  cidr_block              = var.exam_private_b_cidr
  map_public_ip_on_launch = "false"
  availability_zone       = var.availability_zone_b

  tags = {
    Name = "exam-private-b"
    Tier = "private"
  }
}

resource "aws_route_table" "exam-private-rt" {
  vpc_id = aws_vpc.exam.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.exam-nat-gw.id
  }
  tags = {
    Name = "exam-private-rt"
  }
  depends_on = [aws_nat_gateway.exam-nat-gw]
}