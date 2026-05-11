resource "aws_subnet" "Public" {
  vpc_id            = data.aws_vpc.existing.id
  cidr_block        = var.aws_cidr_public
  availability_zone = var.aws_az
  tags = var.aws_tag
  
  }

  resource "aws_subnet" "Publicayush" {
  vpc_id            = data.aws_vpc.existing.id
  cidr_block        = "10.0.18.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name       = "Gopal-07-pub-subnet"
    Owner      = "gopal.dhapa@einfochips.com"
    DM         = "jignesh.vala@einfochips.com"
    Department = "PES-IA"
    Project    = "Boot_camp"
    EndDate    = "2026-05-28"
  }
}




resource "aws_subnet" "Private" {
  vpc_id            = data.aws_vpc.existing.id
  cidr_block        = var.aws_cidr_private
  availability_zone = var.aws_az
  tags = var.aws_tag
  
}

resource "aws_route_table" "route_table_public" {
  vpc_id = data.aws_vpc.existing.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.boot_camp_IGW.id
  }
   tags = var.aws_tag

  
}

resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.Public.id
  route_table_id = aws_route_table.route_table_public.id
}

resource "aws_route_table_association" "Publicayush" {
  subnet_id      = aws_subnet.Publicayush.id
  route_table_id = aws_route_table.route_table_public.id
}

resource "aws_route_table" "route_table_private" {
    vpc_id = data.aws_vpc.existing.id
    # route {
    #     cidr_block = "0.0.0.0/0"
    #   #nat_gateway_id = data.aws_nat_gateway.boot_camp_nat_gw.id
    #     }
      tags = var.aws_tag
        }

resource "aws_route_table_association" "private_subnet_association" {
    subnet_id      = aws_subnet.Private.id
    route_table_id = aws_route_table.route_table_private.id
}