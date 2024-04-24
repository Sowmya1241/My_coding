module "aws_vpc" {
source = "./modules/VPC/"

name = "modulesample"
cidrblock = "10.0.0.0/27"



}
