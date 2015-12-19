#!/bin/bash
set -e

rm node_modules/ -Rf

npm install
gulp 

php composer.phar self-update
php composer.phar install

#php app/console assets:install

chmod 777 * -Rf

supervisord