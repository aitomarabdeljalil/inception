# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aait-oma <aait-oma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/28 13:49:25 by aait-oma          #+#    #+#              #
#    Updated: 2023/05/28 13:49:26 by aait-oma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update -y;\
	apt-get install php-fpm php-mysql curl -y; \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;\
	chmod +x wp-cli.phar;\
	mv wp-cli.phar /usr/local/bin/wp;

COPY /tools/script.sh .

CMD ["bash", "script.sh"]

