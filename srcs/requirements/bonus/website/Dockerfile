# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aait-oma <aait-oma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/28 16:15:49 by aait-oma          #+#    #+#              #
#    Updated: 2023/05/28 16:59:15 by aait-oma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN  apt-get update -y \
	&& apt-get install nginx -y;

COPY tools /var/www/html

CMD ["nginx", "-g", "daemon off;"]
