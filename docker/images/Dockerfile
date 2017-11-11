FROM anthonykgross/docker-fullstack-web:php7

MAINTAINER Anthony K GROSS

WORKDIR /var/www/html

ADD docker/images/entrypoint.sh /entrypoint.sh

RUN apt-get update -y && \
	apt-get install -y nginx supervisor && \
    rm -Rf /src/* && \
	rm -Rf /var/lib/apt/lists/* && \
	apt-get autoremove -y --purge && \
	rm -Rf /etc/nginx/sites-enabled/default && \
	chmod +x /entrypoint.sh && \
	mkdir -p /var/www/logs

COPY . /var/www/html
COPY ./docker/conf/supervisor.conf /etc/supervisor/conf.d/supervisor.conf
COPY ./docker/conf/nginx.conf /etc/nginx/sites-enabled/dopsy.conf

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
CMD ["run"]
