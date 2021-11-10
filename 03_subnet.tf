# 가용영역 a의 Public Subnet
resource "aws_subnet" "jskim_puba" {
  vpc_id = aws_vpc.jskim_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "jskim-puba"
  }
}

# 가용영역 a의 Private Subnet
resource "aws_subnet" "jskim_pria" {
  vpc_id = aws_vpc.jskim_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "jskim-pria"
  }
}

# 가용영역 c의 Public Subnet
resource "aws_subnet" "jskim_pubc" {
  vpc_id = aws_vpc.jskim_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "jskim-pubc"
  }
}

# 가용영역 c의 Private Subnet
resource "aws_subnet" "jskim_pric" {
  vpc_id = aws_vpc.jskim_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "jskim-pric"
  }
}