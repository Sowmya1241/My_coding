
resource "aws_vpc" "sowmya" {
  cidr_block = "${var.cidrblock}"

  tags = {
    Name = "${var.name}"

  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc-sowmya.id
  cidr_block = "10.0.0.0/28"

  tags = {
    Name = "Main"
  }
}
# resource "aws_subnet" "main2" {
#   vpc_id     = aws_vpc.sowmya.id
#   cidr_block = "10.0.0.8/29"

#   tags = {
#     Name = "Main"
#   }
# }

resource "aws_instance" "example_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet_main.id


  tags = {
    Name = "example_server"
  }
}

