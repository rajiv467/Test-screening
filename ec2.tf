# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "webinstance" {
  ami                         = "ami-02f3f602d23f1659d"
  instance_type               = "t2.micro"
  #count                       = 1
  key_name                    = "testkeys"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = "${aws_subnet.public-subnet-1.id}"
  associate_public_ip_address = true
  user_data                   = "${file("web.sh")}"

  tags = {
    Name = "Web-server"
  }
}

# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "appinstance1" {
  ami                         = "ami-02f3f602d23f1659d"
  instance_type               = "t2.micro"
  #count                       = 1
  key_name                    = "testkeys"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = "${aws_subnet.application-subnet-1.id}"
  associate_public_ip_address = true
  user_data                   = "${file("app.sh")}"

  tags = {
    Name = "App-server"
  }
}
