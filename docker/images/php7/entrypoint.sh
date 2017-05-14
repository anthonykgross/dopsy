#!/bin/bash
set -e
source ~/.bash_profile

install() {
    rm node_modules/ -Rf
    gosu docker yarn
    gosu docker gulp
    composer self-update
    gosu docker composer install
    #php app/console assets:install
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
