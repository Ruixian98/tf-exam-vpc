terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.62.0"
    }

    template = {
      version = "2.2.0"
    }

    null = {
      version = "3.2.1"
    }
  }
}

provider "aws" {
  region = local.region
}