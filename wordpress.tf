resource "aws_instance" "web" {
  ami = "ami-7e257211"
  instance_type = "t2.micro"
  key_name = "key1"
  vpc_security_group_ids = [ "${aws_security_group.ssh_http1.id}" ]
  subnet_id = aws_subnet.main.id  
tags ={
    Name = "wordpress"
  }
  
}