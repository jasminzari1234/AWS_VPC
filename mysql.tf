resource "aws_instance" "web2" {
  ami = "ami-08706cb5f68222d09"
  instance_type = "t2.micro"
  key_name = "key1"
  vpc_security_group_ids = [ "${aws_security_group.ssh_http1.id}" ]
  subnet_id = aws_subnet.main1.id  
tags ={
    Name = "mysql"
  }
  
}


