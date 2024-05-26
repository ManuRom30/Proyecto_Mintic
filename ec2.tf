resource "aws_instance" "server_ejercicio" {
  ami = "ami-058bd2d568351da34"
  instance_type = "t2.micro"
  key_name = "key_servidor_test"
  subnet_id = aws_subnet.subnet_vpc_ejercicio.id
  security_groups = [aws_security_group.sg_ejercicio.id]
  private_ip = "172.16.10.4"
  
  

  tags = {
    Name = "server_ejercicio"
  }
}