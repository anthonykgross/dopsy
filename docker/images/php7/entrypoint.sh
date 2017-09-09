#!/bin/bash
set -e
source ~/.bash_profile

install() {
    rm node_modules/ -Rf
    composer self-update
    gosu docker composer install
}

tests() {
    gosu docker php bin/phpunit -c app/
}

run() {
    supervisord
}

case "$1" in
"install")
    echo "Install"
    install
    ;;
"tests")
    echo "Tests"
    tests
    ;;
"run")
    echo "Run"
    run
    ;;
*)
    echo "Custom command : $@"
    exec "$@"
    ;;
esac
