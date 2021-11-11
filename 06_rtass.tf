resource "aws_route_table_association" "jskim_rtass_a" {
  subnet_id      = aws_subnet.jskim_puba.id
  route_table_id = aws_route_table.jskim_rt.id
}

resource "aws_route_table_association" "jskim_rtass_c" {
  subnet_id      = aws_subnet.jskim_pubc.id
  route_table_id = aws_route_table.jskim_rt.id
}
