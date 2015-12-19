#/bin/sh

docker build --file="docker/images/php7/Dockerfile" --tag="dopsy_php7:latest" docker/images/php7/.
docker build --file="docker/images/mysql/Dockerfile" --tag="dopsy_mysql:latest" docker/images/mysql/.