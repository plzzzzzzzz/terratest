resource "aws_launch_configuration" "jskim_aslc" {
  name_prefix          = "jskim-web-"
  image_id             = aws_ami_from_instance.jskim_ami.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.jskim_sg.id]
  key_name             = "jskim2-key"
  #  user_data = file("./install.sh")

  lifecycle {
    create_before_destroy = true
  }
}
