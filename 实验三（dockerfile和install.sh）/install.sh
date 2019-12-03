#!/bin/sh
#安装程序
yum install mariadb-server mariadb httpd epel-release yum-utils  -y
systemctl enable mariadb.service
#mysql
yum install httpd
systemctl start httpd.service
systemctl enable httpd.service
#apache服务器
yum install epel-release yum-utils sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum-config-manager --enable remi-php72
yum install php php-mysql -y
yum install php-fpm php-gd -y
#php
tar xzvf wordpress.tar.gz
rm -rf /var/www/html
chown -R apache:apache /var/www
#wordpress
