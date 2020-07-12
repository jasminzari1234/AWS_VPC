resource "aws_security_group" "ssh_http1"{
name = "ssh_http1"
description="allow ssh and http traffic"
vpc_id      = aws_vpc.main.id

ingress{
from_port =22
to_port =22
protocol ="tcp"
cidr_blocks=["0.0.0.0/0"]
}
ingress{
from_port =80 
to_port =80
protocol ="tcp"
cidr_blocks =["0.0.0.0/0"]
}
ingress{
description = "For_Mysql"
from_port =3306 
to_port =3306
protocol ="tcp"
cidr_blocks =["0.0.0.0/0"]
}
egress{
from_port =0
to_port = 0
protocol ="-1"
cidr_blocks = ["0.0.0.0/0"]
}
tags={
   Name= "HTTP_SSH_MYSQL"
}
}
