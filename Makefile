NAME_PHP=dopsy_php7
NAME_MYSQL=dopsy_mysql

build:
	docker build --file="docker/images/php7/Dockerfile" --tag="$(NAME_PHP):latest" docker/images/php7/.
	docker build --file="docker/images/mysql/Dockerfile" --tag="$(NAME_MYSQL):latest" docker/images/mysql/.

install:
	chmod -Rf 777 docker/
	chmod 644 docker/etc/mysql/my.cnf
	docker-compose run php7 install
	
debug:
	docker run -it --rm --entrypoint=/bin/bash $(NAME_PHP):master

run:
	docker-compose up