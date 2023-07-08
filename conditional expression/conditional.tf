provider "aws" {
  region     = "us-east-1"
  access_key = "add your access key"
  secret_key = "add your secret key"
}


resource "aws_instance" "dev" {
  ami           = "ami-06b09bfacae1453cb"
  instance_type = var.instancetype
  count         = var.istest == true ? 1 : 0

}

resource "aws_instance" "prod" {
  ami           = "ami-06b09bfacae1453cb"
  instance_type = var.instancetype
  count         = var.istest == false ? 1 : 0

}
