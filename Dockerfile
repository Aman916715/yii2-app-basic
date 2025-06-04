FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    git unzip libzip-dev zip curl \
    && docker-php-ext-install pdo pdo_mysql zip

COPY . /var/www/html
WORKDIR /var/www/html


EXPOSE 9000
CMD ["php-fpm"]
