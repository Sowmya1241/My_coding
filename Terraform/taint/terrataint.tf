resource "aws_instance" "example1" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t2.micro"
  tags = {
   name = " example1"
}
}
resource "aws_instance" "example2" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t2.micro"
tags= {
 name = "example2"
}
}

