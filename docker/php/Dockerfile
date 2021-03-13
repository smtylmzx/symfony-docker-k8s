FROM php:7.2-fpm

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin \
    --filename=composer

WORKDIR /var/www/app
