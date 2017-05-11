#!/bin/bash
set -e

install() {
    rm node_modules/ -Rf
    yarn
    gulp
    php composer.phar self-update
    php composer.phar install
    #php app/console assets:install
}

tests() {
    php bin/phpunit -c app/
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
