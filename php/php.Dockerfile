FROM php:7.3-fpm
COPY ./src/project /var/www/html
WORKDIR /var/www/html
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libmcrypt-dev \
    libxslt-dev \
    libicu-dev \
    libmemcached-dev \
    zlib1g-dev \
    libmagickwand-dev \
    libmagickcore-dev \
    libgeoip-dev \
    libsodium-dev \ 
    curl \
    unzip \
    docker-php-ext-install exif 


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer \
    xdebug 

# RUN usermod -u 1000 www-data && \
#     groupmod -g 1000 www-data && \
#     chown -R www-data:www-data /var/www/ && \
#     chmod -R g+w /var/www/
# USER www-data