resource "aws_lb_target_group_attachment" "jskim_tgatt" {
  target_group_arn = aws_lb_target_group.jskim_albtg.arn
  target_id        = aws_instance.jskim_weba.id
  port             = 80
}
