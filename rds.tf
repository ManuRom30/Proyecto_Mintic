# --Base de datos--

# 1. Creamos el cluster
resource "aws_db_instance" "rds_wordpress" {
  allocated_storage = 20
  engine = "mysql"
  engine_version = "5.7.44"
  instance_class = "db.t3.micro"
  db_name = "rdswordpress" 
  username = "root_user"
  password = "rdsMysql"
  multi_az = true
  identifier = "db_proyecto"
  db_subnet_group_name = aws_db_subnet_group.my_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.sg_rds.id]

}