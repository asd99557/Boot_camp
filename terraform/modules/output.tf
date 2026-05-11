output "vpc_id" {
  value = module.vpc.vpc_id
}



output "igw_id" {
  value = module.vpc.igw_id
}

# output "aws_nat_gateway_id" {
#   value = module.vpc.nat_gateway_id
# }
# }


output "aws_subnet_public_id" {
  value = module.vpc.aws_subnet_public_id
  
}

output "aws_subnet_Publicayush_id" {
  value = module.vpc.aws_subnet_Publicayush_id
}

output "aws_subnet_private_id" {
  value = module.vpc.aws_subnet_privare_id
}

output "aws_route_table_public_id" {
  value = module.vpc.aws_route_table_public_id
}

# output "aws_route_table_private_id" {
#   value = module.vpc.aws_route_table_private_id
# }
