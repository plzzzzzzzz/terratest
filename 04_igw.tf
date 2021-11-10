# 10.0.0.0/16 VPC 전용 Internet Gateway
resource "aws_internet_gateway" "jskim_igw" {
  vpc_id = aws_vpc.jskim_vpc.id

  tags = {
    "Name" = "jskim-igw"
  }
}