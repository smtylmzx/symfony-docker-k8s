FROM php:7.2-fpm

RUN apt-get update -y \
    && apt-get install -y nginx

COPY ./symfony/docker/nginx/default.conf /etc/nginx/conf.d/default.conf

COPY ./symfony/ /var/www/app

WORKDIR /var/www/app

EXPOSE 80

COPY symfony/entrypoint.sh /etc/entrypoint.sh

RUN chmod +x /etc/entrypoint.sh
RUN chmod -R 777 /var/www/app/var/*

ENTRYPOINT ["/etc/entrypoint.sh"]
