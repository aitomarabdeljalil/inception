# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aait-oma <aait-oma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/31 13:36:33 by aait-oma          #+#    #+#              #
#    Updated: 2023/05/31 13:36:34 by aait-oma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update -y ; \
	apt-get install -y mariadb-server;

RUN	sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN	sed -i 's/^skip-networking/#skip-networking/g' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sh .

CMD ["bash", "script.sh"]
