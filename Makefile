NAME_PHP=dopsy_php7

build:
	docker build --file="docker/images/php7/Dockerfile" --tag="$(NAME_PHP):latest" docker/images/php7/.

install:
	docker-compose run php7 install
	
debug:
	docker-compose run php7 bash

run:
	docker-compose up