FROM php:7.2.2-fpm
RUN apt-get update -y && apt-get install -y libmcrypt-dev openssl git zlib1g-dev zip
RUN apt-get install -y libmcrypt-dev && \
    pecl install mcrypt-1.0.1 && \
    docker-php-ext-enable mcrypt
RUN docker-php-ext-install pdo mbstring pdo_mysql mysqli zip
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# RUN docker-php-ext-install pdo mbstring

# COPY ./web-edunetwork/backend-laravel-6.0.2 /app

# VOLUME ["/app"]

# WORKDIR /app
# RUN composer install

# CMD php artisan serve --host=0.0.0.0 --port=80
# EXPOSE 80