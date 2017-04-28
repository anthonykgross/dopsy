#!/bin/bash
set -e

install() {
    rm node_modules/ -Rf
    npm install
    gulp
    php composer.phar self-update
    php composer.phar install
    #php app/console assets:install
}

tests() {
    php bin/phpunit -c app/
}

run() {
    chmod 755 * -Rf
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
"init")
    echo "Initialization"
    install
    run
    ;;
*)
    echo "Custom command : $@"
    exec "$@"
    ;;
esac
