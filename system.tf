module "vpc" {
  source              = "./vpc"
  region              = local.region
  availability_zone_a = local.availability_zone_a
  availability_zone_b = local.availability_zone_b
  availability_zone_c = local.availability_zone_c

  exam_vpc_cidr      = local.exam_vpc_cidr
  exam_public_a_cidr = local.exam_public_a_cidr
  exam_public_b_cidr = local.exam_public_b_cidr
  exam_private_a_cidr = local.exam_private_a_cidr
  exam_private_b_cidr = local.exam_private_b_cidr
}