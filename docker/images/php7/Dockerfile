FROM php:7.0.0-fpm

MAINTAINER Anthony K GROSS

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y npm curl nginx git supervisor zlib1g-dev

RUN docker-php-ext-install opcache && \
	docker-php-ext-enable opcache && \
	docker-php-ext-install pdo_mysql && \
	docker-php-ext-enable pdo_mysql && \
	docker-php-ext-install zip && \
	docker-php-ext-enable zip && \
	php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
	php composer-setup.php && \
	php -r "unlink('composer-setup.php');" && \
	mv composer.phar /usr/bin/composer && \
	chmod +x /usr/bin/composer && \
	rm -Rf /etc/nginx/* && \
    rm -Rf /src/*

# Installation de Node.js à partir du site officiel
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

RUN rm -rf /var/lib/apt/lists/* && apt-get autoremove -y --purge

RUN npm install -g bower
RUN npm install -g gulp
RUN npm install -g yarn

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh && \
	rm /var/www/html/index.nginx-debian.html

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
CMD ["run"]
