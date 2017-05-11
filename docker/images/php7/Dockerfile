FROM php:7.0.0-fpm

MAINTAINER Anthony K GROSS

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y npm curl nginx git supervisor

RUN docker-php-ext-install opcache  
RUN docker-php-ext-enable opcache
RUN docker-php-ext-install pdo_mysql  
RUN docker-php-ext-enable pdo_mysql

RUN rm -Rf /etc/nginx/* && \
    rm -Rf /src/*

# Installation de Node.js à partir du site officiel
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

RUN rm -rf /var/lib/apt/lists/* && apt-get autoremove -y --purge

RUN npm install -g bower
RUN npm install -g gulp

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
CMD ["run"]
