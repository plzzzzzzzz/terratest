resource "aws_autoscaling_attachment" "jskim_asgalbatt" {
  autoscaling_group_name = aws_autoscaling_group.jskim_asg.id
  alb_target_group_arn = aws_lb_target_group.jskim_albtg.arn
}