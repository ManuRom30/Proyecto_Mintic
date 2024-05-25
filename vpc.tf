resource "aws_vpc" "vpc_ejercicio" {
    cidr_block = "172.16.0.0/16"
    enable_dns_hostnames = true 

    tags = {
      Name = "vpc_ejercicio"
    }
  
}

resource "aws_subnet" "subnet_vpc_ejercicio" {
    vpc_id = aws_vpc.vpc_ejercicio.id
    cidr_block = "172.16.10.0/24"
    availability_zone = "us-east-2b"
    #map_public_ip_on_launch = true
    #depends_on = [ aws_internet_gateway.int_gw_vpc_actividad ]

    tags = {
      Name = "subnet_vpc_ejercicio"
    }
  
}

resource "aws_internet_gateway" "int_gw_vpc_actividad" {
    vpc_id = aws_vpc.vpc_ejercicio.id
}

resource "aws_route_table" "rtb_subnet_ejer" {

  vpc_id = aws_vpc.vpc_ejercicio.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.int_gw_vpc_actividad.id
  }

  tags = {
    Name = "rtb_subnet_ejer"
  }
}
resource "aws_route_table_association" "rtb_aso" {
    subnet_id = aws_subnet.subnet_vpc_ejercicio.id
    route_table_id = aws_route_table.rtb_subnet_ejer.id
  
}