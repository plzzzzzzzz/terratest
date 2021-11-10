resource "aws_vpc" "jskim_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "jskim-vpc"
  }
}