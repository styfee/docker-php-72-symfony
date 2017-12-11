FROM php:7-apache

RUN docker-php-ext-install pdo pdo_mysql

RUN a2enmod rewrite

COPY apache.vhost.conf /etc/apache2/sites-available/000-default.conf
