FROM php:7.2.0-fpm-alpine3.7

RUN apk update && \
    apk add vim zlib-dev && \
    curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && \
    docker-php-ext-install -j$(nproc) zip && \
    composer global require "laravel/installer"
