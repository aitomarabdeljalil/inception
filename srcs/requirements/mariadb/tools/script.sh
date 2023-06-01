#!/bin/bash

if [ ! -d "/var/lib/mysql/$DB_NAME" ]; then
    service mysql start
	echo "$DB_NAME database does not exist"
    mysql -u root -e "CREATE DATABASE $DB_NAME;";
    mysql -u root -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS'" ;
    mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%'; FLUSH PRIVILEGES;" ;
    mysql -u root -e "alter user 'root'@'localhost' identified by '$ROOT_PSWD'; FLUSH PRIVILEGES;" ;
	kill `cat /var/run/mysqld/mysqld.pid`
fi

mysqld_safe
# tail -f /dev/null
