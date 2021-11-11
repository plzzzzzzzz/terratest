resource "aws_eip" "jskim_eip_nat" {
  vpc = true
}

resource "aws_nat_gateway" "jskim_nat" {
  allocation_id = aws_eip.jskim_eip_nat.id
  subnet_id = aws_subnet.jskim_puba.id
  tags = {
    "Name" = "jskim-nat"
  }
  depends_on = [
    aws_internet_gateway.jskim_igw
  ]
}