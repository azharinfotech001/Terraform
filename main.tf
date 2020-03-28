data "aws_availability_zones" "available"{}


resource "aws_instance" "web" {
  //count = 3
  //ami   = "ami-0fc61db8544a617ed"
  //instance_type = "t2.micro"
  //ami           = var.ami_type
  //security_groups = var.sgs
  ami = lookup(var.ami_type,var.region)
  availability_zone= data.aws_availability_zones.available.names[0]
  instance_type = lookup(var.instance_type,var.env)
  tags = {
    Name = "TestInstance"
  }
}







# resource "aws_s3_bucket" "b" {
#   bucket = "my-tf-test-bucket5059"
#   //acl    = "private"
#   versioning {
#     enabled = true
#   }
#   lifecycle {
#     prevent_destroy = false
#   }
#   tags = {
#     Name        = "My bucket"
#     //Environment = "Dev"
#   }
# }
