variable "instance_type" {
  type = map
  default = {
              dev = "t2.micro"
              test = "t2.medium"
              prod = "t2.xlarge"
              }
}

variable "ami_type"{
  type = map
  default = {
    us-east-1 = "ami-0fc61db8544a617ed"
    us-east-2 = "ami-0e01ce4ee18447327"
  }
}

# variable "sgs"{
#   type = list
#   default = ["allow_all"]
# }

variable "env" {}
variable "region" {}

//{
  //default = "ami-0fc61db8544a617ed"
  //type = string
//}
# variable "instance_type" {
#   default = "t2.micro"
#   type = string
# }
# variable "instance_type" {
# type = map
# default = {
# dev = "t2.micro"
# test = "t2.medium"
# prod = "t2.xlarge"
# }
# }
# variable "env" {}
