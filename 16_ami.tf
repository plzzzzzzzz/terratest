resource "aws_ami_from_instance" "jskim_ami" {
  name               = "jskim-aws_ami"
  source_instance_id = aws_instance.jskim_weba.id

  depends_on = [
    aws_instance.jskim_weba
  ]

  tags = {
    "Name" = "jskim-ami"
  }
}