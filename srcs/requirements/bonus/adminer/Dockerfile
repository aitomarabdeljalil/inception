# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aait-oma <aait-oma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/27 13:28:07 by aait-oma          #+#    #+#              #
#    Updated: 2023/05/31 08:35:42 by aait-oma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y;\
	apt-get install -y wget apache2 php libapache2-mod-php php-mysql ; \
	mkdir -p /var/www/html/ && rm -rf /var/www/html/*;

RUN	wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /var/www/html/index.php

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]

# place of 127.0.0.1 do aait-oma.42.fr
