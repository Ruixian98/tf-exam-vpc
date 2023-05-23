
locals {
  region              = "cn-northwest-1"
  availability_zone_a = "cn-northwest-1a"
  availability_zone_b = "cn-northwest-1b"
  availability_zone_c = "cn-northwest-1c"

  exam_vpc_cidr = "10.21.0.0/16"

  exam_public_a_cidr = "10.21.0.0/24"
  exam_public_b_cidr = "10.21.1.0/24"

  exam_private_a_cidr = "10.21.16.0/20"
  exam_private_b_cidr = "10.21.32.0/20"
}
