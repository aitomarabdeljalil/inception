#!/bin/bash

if [ ! -f "/var/www/html/index.php" ]; then
    mkdir -p '/var/www/html/';
    chmod 777 '/var/www/html/';
    wp core download --path=/var/www/html/ --allow-root
    (cd /var/www/html/ && mv wp-config-sample.php wp-config.php)
    cd /var/www/html/
    sed -i "s/database_name_here/$DB_NAME/1" wp-config.php
    sed -i "s/password_here/$DB_PASS/1" wp-config.php
    sed -i "s/username_here/$DB_USER/1" wp-config.php
    sed -i "s/localhost/mariadb/1" wp-config.php
    wp core install --path=/var/www/html/ --url='localhost' --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADM_PASS  --admin_email=$WP_EMAIL --allow-root
    wp user create $WP_ADMIN $WP_EMAIL --role=author --user_pass=$WP_PASS --path='/var/www/html/' --allow-root
	wp plugin install redis-cache --activate --allow-root
	wp config set WP_REDIS_PORT 6379 --path="/var/www/html" --allow-root;
	wp config set WP_REDIS_HOST redis --path="/var/www/html" --allow-root;
    wp redis enable --allow-root
    sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf;
fi

chown -R www-data:www-data /var/www/html
service php7.3-fpm start;
service php7.3-fpm stop


php-fpm7.3 -F
