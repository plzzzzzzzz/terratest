resource "aws_lb" "jskim_alb" {
  name = "jskim-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.jskim_sg.id]
  subnets = [aws_subnet.jskim_puba.id,aws_subnet.jskim_pubc.id]

  tags = {
    "Name" = "jskim-alb"
  }
}