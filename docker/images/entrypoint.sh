#!/bin/bash
set -e
source ~/.bash_profile

install() {
    composer self-update
    gosu docker composer install
}

tests() {
    gosu docker php vendor/bin/phpunit -c .
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
