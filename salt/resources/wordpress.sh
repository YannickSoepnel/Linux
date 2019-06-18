#!/bin/bash

docker run -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=wordpress --name wordpressdb -v "$PWD/database":/var/lib/mysql -d mariadb:latest

docker run -e WORDPRESS_DB_PASSWORD=root --name wordpress --link wordpressdb:mysql -p 80:80 -v "$PWD/html":/var/www/html -d wordpress
