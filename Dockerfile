FROM php:7.4.5-apache
RUN apt-get update
RUN docker-php-ext-install mysqli
RUN apt-get install libcurl4 libcurl4-openssl-dev -y
RUN docker-php-ext-install curl
RUN docker-php-ext-install pdo_mysql
RUN a2enmod rewrite