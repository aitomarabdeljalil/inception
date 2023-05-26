FROM debian:buster

RUN apt-get update;\
	apt-get install redis-server -y;\
	sed -i "s/127.0.0.1/0.0.0.0/" /etc/redis/redis.conf;

CMD ["redis-server", "--protected-mode", "no"]
