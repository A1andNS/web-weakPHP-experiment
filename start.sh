#!/bin/bash
#启动mysql
service mysql restart
cd /var/www/a1andns
unzip /var/www/a1andns/src.zip
chmod 666 /var/www/a1andns/*.php
chmod 666 /var/www/a1andns/*.html
chmod 666 /var/www/a1andns/img/*
chmod 666 /var/www/a1andns/css/*
chmod +rx /var/www/a1andns/css
chmod +rx /var/www/a1andns/img

#给文件加权限
chown mysql /var/run/mysqld
chown -R mysql:mysql /var/lib/mysql

#修改密码
mysqladmin -u root password "a1andns"

#重启apache2
service apache2 restart

#永不退出的进程
tail -f /var/log/1.txt

