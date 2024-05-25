resource "aws_eip" "elastic_ip_ejercicio" {
    domain = "vpc"
    instance = aws_instance.server_ejercicio.id
    depends_on = [ aws_internet_gateway.int_gw_vpc_actividad ]
    associate_with_private_ip = "172.16.10.4"
    tags = {
    Name = "eip_ejercicio"
  }
}
