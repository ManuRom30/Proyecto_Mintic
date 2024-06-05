resource "aws_db_subnet_group" "my_db_subnet_group" {
  name = "my-db-subnet-group"
  subnet_ids = [aws_subnet.subnet_vpc_proyecto.id, aws_subnet.subnet_vpc_rds.id]

  tags = {
    Name = "My DB Subnet Group"
  }
}