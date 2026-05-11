output "vpc_id" {
  value = data.aws_vpc.existing.id
}



output "igw_id" {
  value = data.aws_internet_gateway.boot_camp_IGW.id
}

# output "aws_nat_gateway_id" {
#   value = data.aws_nat_gateway.boot_camp_nat_gw.id
# }


output "aws_subnet_public_id" {
  value = aws_subnet.Public.id
  
}

output "aws_subnet_privare_id" {
  value = aws_subnet.Private.id
}
output "aws_subnet_Publicayush_id" {
  value = aws_subnet.Publicayush.id
}

output "aws_route_table_public_id" {
  value = aws_route_table.route_table_public.id
}


output "aws_route_table_private_id" {
  value = aws_route_table.route_table_private.id
}
