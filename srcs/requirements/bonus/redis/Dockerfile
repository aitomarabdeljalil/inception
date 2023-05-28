# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aait-oma <aait-oma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/27 13:27:43 by aait-oma          #+#    #+#              #
#    Updated: 2023/05/27 13:27:44 by aait-oma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update;\
	apt-get install redis-server -y;\
	sed -i "s/127.0.0.1/0.0.0.0/" /etc/redis/redis.conf;

CMD ["redis-server", "--protected-mode", "no"]
