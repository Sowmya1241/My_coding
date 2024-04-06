resource "aws_vpc" "my_vpc" {
  cidr_block = "${var.cidrblock}"

  tags = {
    Name = "${var.name}"

  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.0.0/28"

  tags = {
    Name = "Main"
  }
}
# resource "aws_subnet" "main2" {
#   vpc_id     = aws_vpc.my_vpc.id
#   cidr_block = "10.0.0.8/29"

#   tags = {
#     Name = "Main"
#   }
# }


