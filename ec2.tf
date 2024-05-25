resource "aws_instance" "server_ejercicio" {
  ami = "ami-0b8b44ec9a8f90422"
  instance_type = "t2.micro"
  key_name = "key_ohio_ec2"
  subnet_id = aws_subnet.subnet_vpc_ejercicio.id
  security_groups = [aws_security_group.sg_ejercicio.id]
  private_ip = "172.16.10.4"
  
  

  tags = {
    Name = "server_ejercicio"
  }
}