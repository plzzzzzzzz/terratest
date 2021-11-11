resource "aws_route_table" "jskim_natrt" {
  vpc_id = aws_vpc.jskim_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.jskim_nat.id
  }

  tags = {
    "Name" = "jskim-natrt"
  }
}