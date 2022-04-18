resource "aws_default_vpc" "default" {
  tags = {
    Name = "tcwvpc"
  }
}
resource "aws_default_subnet" "default_az1" {
  availability_zone = "us-east-1a"
  tags = {
    Name = "Default subnet for us-east-1"
  }
}
resource "aws_default_subnet" "default_az2" {
  availability_zone = "us-east-1b"
  tags = {
    Name = "Default subnet for us-east-1"
  }
}
