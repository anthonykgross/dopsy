FROM php:7.0.0-fpm

MAINTAINER Anthony K GROSS

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y npm curl nginx git supervisor

RUN docker-php-ext-install opcache  
RUN docker-php-ext-enable opcache
  
# Installation de Node.js à partir du site officiel
RUN curl -LO "https://nodejs.org/dist/v0.12.5/node-v0.12.5-linux-x64.tar.gz" 
RUN tar -xzf node-v0.12.5-linux-x64.tar.gz -C /usr/local --strip-components=1
RUN rm node-v0.12.5-linux-x64.tar.gz

RUN rm -rf /var/lib/apt/lists/* && apt-get autoremove -y --purge

RUN npm install -g bower
RUN npm install -g gulp

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
CMD ["run"]