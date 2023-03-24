FROM php:8.1.16-fpm-bullseye
RUN apt-get update -y && apt-get install -y libpng-dev libonig-dev libzip-dev zlib1g-dev

RUN docker-php-ext-install mysqli pdo pdo_mysql 
RUN docker-php-ext-install mbstring

RUN docker-php-ext-install zip

RUN docker-php-ext-install gd

RUN docker-php-ext-enable pdo_mysql

RUN docker-php-ext-install opcache

ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS="0"
ADD opcache.ini "$PHP_INI_DIR/conf.d/opcache.ini"

RUN pecl install -o -f redis &&  rm -rf /tmp/pear
RUN docker-php-ext-enable redis

RUN pecl install uploadprogress 
RUN docker-php-ext-enable uploadprogress



#  && echo 'extension=uploadprogress.so' > /usr/local/etc/php/conf.d/uploadprogress.ini
