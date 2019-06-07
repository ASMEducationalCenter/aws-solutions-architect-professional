#!/bin/bash
yum update -y
yum install -y httpd
service httpd start
chkconfig httpd on
groupadd www
usermod -a -G www ec2-user
echo "hello" > /var/www/html/index.html
chown -R root:www /var/www
chmod -R 2775 /var/www
echo '<h1>This is Main site of Picture </h1>'>/var/www/html/index.html

echo '<h1>This is pic1  </h1>'>/var/www/html/picture.html
