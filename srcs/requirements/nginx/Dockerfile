FROM debian:buster

RUN  apt-get update -y \
	&& apt-get install nginx -y \
    && apt-get install openssl -y \
    && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/CN=MA"

COPY /conf/default /etc/nginx/sites-available

CMD ["nginx", "-g", "daemon off;"]
