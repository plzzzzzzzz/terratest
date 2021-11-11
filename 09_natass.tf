resource "aws_route_table_association" "jskim_natass_a" {
  subnet_id = aws_subnet.jskim_pria.id
  route_table_id = aws_route_table.jskim_natrt.id
}

resource "aws_route_table_association" "jskim_natass_c" {
  subnet_id = aws_subnet.jskim_pric.id
  route_table_id = aws_route_table.jskim_natrt.id
}