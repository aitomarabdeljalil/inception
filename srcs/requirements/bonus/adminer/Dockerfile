# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aait-oma <aait-oma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/27 13:28:07 by aait-oma          #+#    #+#              #
#    Updated: 2023/05/27 13:28:08 by aait-oma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y;\
	apt-get install adminer -y;\
	a2enconf adminer.conf; \
	sed -i 's/#ServerName www.example.com/ServerName 127.0.0.1/1' /etc/apache2/sites-available/000-default.conf; \
    service apache2 start;

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]

# place of 127.0.0.1 do aait-oma.42.fr
