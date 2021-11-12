resource "aws_db_instance" "jskim_rds" {
  allocated_storage = 20
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "8.0"
  instance_class = "db.t2.micro"
  name = "mydb"
  identifier = "test"
  username = "admin"
  password = "It12345!"
  parameter_group_name = "default.mysql8.0"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.jskim_dbsb.id
  vpc_security_group_ids = [aws_security_group.jskim_sg.id]
  skip_final_snapshot = true
  tags = {
    "Name" = "jskim-rds"
  }
}

resource "aws_db_subnet_group" "jskim_dbsb" {
  name = "jskim-dbsb-group"
  subnet_ids = [aws_subnet.jskim_pridba.id,aws_subnet.jskim_pridbc.id]
  tags = {
    "Name" = "jskim-dbsb-gp"
  }
}