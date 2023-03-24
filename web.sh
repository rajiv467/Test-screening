#!/bin/bash

yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello World This is Screening Process from Web server $(hostname -f)" > /var/www/html/index.html