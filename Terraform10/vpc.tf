resource "aws_vpc" "myvpc" {
  tags = {
    Name = "myvpc"
  }
  cidr_block        = "10.0.0.0/16"
  instance_tenancy    = "default"
  enable_dns_hostnames = true
}

resource "aws_subnet" "subnet1" {
  tags = {
    Name = "mysubnet1"
  }
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

}


resource "aws_subnet" "subnet2" {
  tags = {
    Name = "mysubnet2"
  }
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

}


resource "aws_internet_gateway" "myigw1" {
  tags = {
    Name = "myigw1"
  }
  vpc_id = aws_vpc.myvpc.id

}


resource "aws_route_table" "myrt" {
  tags = {
    Name = "myrt"
  }
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw1.id

  }

}


resource "aws_route_table_association" "ass1" {
  route_table_id = aws_route_table.myrt.id
  subnet_id      = aws_subnet.subnet1.id
}

resource "aws_route_table_association" "ass2" {
  route_table_id = aws_route_table.myrt.id
  subnet_id      = aws_subnet.subnet2.id
}
