FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y;\
	apt-get install adminer -y;\
	a2enconf adminer.conf; \
	sed -i 's/#ServerName www.example.com/ServerName 127.0.0.1/1' /etc/apache2/sites-available/000-default.conf; \
    service apache2 start;

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]

# place of 127.0.0.1 do aait-oma.42.fr
