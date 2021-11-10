resource "aws_route_table" "jskim-rt" {
  vpc_id = aws_vpc.jskim_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.jskim_igw.id
  }
  tags = {
    "Name" = "jskim-rt"
  }
}