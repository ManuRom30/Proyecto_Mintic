# --Base de datos--

# 1. Creamos el cluster
resource "aws_rds_cluster" "rds_wordpress" {
  cluster_identifier      = "mysql-cluster-rds"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.11.5"
  availability_zones      = ["us-east-1a"]
  database_name           = "mydb"
  master_username         = "root_user"
  master_password         = "rdsMysql"
}