resource "aws_security_group" "sg_rds" {
    name = "sg_mysql"
    description = "Allow traffic mysql"
    vpc_id = aws_vpc.vpc_ec2_wordpress.id

    tags = {
      Name = "Allow all"
    }
    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Puerto MYSQL"

    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "All Allow"
    }
}
