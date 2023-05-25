FROM debian:buster

RUN apt-get update -y;\
	apt-get install php-fpm php-mysql curl -y; \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;\
	chmod +x wp-cli.phar;\
	mv wp-cli.phar /usr/local/bin/wp;

COPY /tools/script.sh .

CMD ["bash", "script.sh"]

