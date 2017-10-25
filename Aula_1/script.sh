#!/bin/sh
sudo yum -y install httpd php
sudo service httpd start
sudo chkconfig httpd on
cd /var/www/html
sudo wget https://raw.githubusercontent.com/franciscoed/udemy/master/Aula_1/hostname.php
