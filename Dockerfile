FROM php:7.1.15-fpm
RUN apt-get update && apt-get install -y \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libmcrypt-dev \
  libpng-dev \
  curl \
  libcurl4-openssl-dev
RUN docker-php-ext-install pdo_mysql mcrypt gd mbstring curl json
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-enable pdo_mysql mcrypt gd mbstring curl json
RUN apt-get purge --auto-remove \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*