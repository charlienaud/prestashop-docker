ARG PS_VERSION=1.7.8.6
ARG PHP_VERSION=7.1
ARG WEB_SERVER=apache

FROM prestashop/prestashop:${PS_VERSION}-${PHP_VERSION}-${WEB_SERVER}

# Install composer
COPY --from=composer:2.6 /usr/bin/composer /usr/bin/composer
