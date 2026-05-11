# Existing VPC
data "aws_vpc" "existing" {
  filter {
    name   = "tag:Name"
    values = ["Bootcamp-vpc-do-not-delete-vpc"]
  }
}

data "aws_internet_gateway" "boot_camp_IGW" {
  filter {
    name   = "tag:Name"
    values = ["Bootcamp-vpc-do-not-delete-igw"]
  }
}

# data "aws_nat_gateway" "boot_camp_nat_gw" {
#   filter {
#     name   = "tag:Name"
#     values = ["Bootcamp-vpc-do-not-delete-nat"]

  
# }
#}