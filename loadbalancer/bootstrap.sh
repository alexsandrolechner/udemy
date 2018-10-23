#!/bin/sh
yum -y install httpd
service httpd start
chkconfig httpd on
echo '<html><body>Hello Udemy!</body></html>' > /var/www/html/index.html
