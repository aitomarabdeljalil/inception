#!/bin/bash

if [ ! -f "/var/www/html/index.php" ]; then
	mkdir -p '/var/www/html/';
	chown -R www-data:www-data /var/www/;
	runuser -u www-data -- wp core download --path=/var/www/html/;
	runuser -u www-data -- wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost='mariadb' --skip-check --path=/var/www/html/ ;
	runuser -u www-data -- wp user create $WP_ADMIN $WP_EMAIL --role=author --user_pass=$WP_PASS --path='/var/www/html/';
	runuser -u www-data -- wp core install --path=/var/www/html/ --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADM_PASS  --admin_email=$WP_EMAIL;
	runuser -u www-data -- wp plugin install redis-cache --activate;
	sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf;
fi

service php7.3-fpm start;
service php7.3-fpm stop

/usr/sbin/php-fpm7.3 -F
