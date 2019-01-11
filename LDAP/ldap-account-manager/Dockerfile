FROM php:7.2-apache

ENV LAM_VERSION=6.6 \
    CONFIG=/var/www/html/config

RUN apt-get update \
    && apt-get install -y wget libzip-dev libghc-ldap-dev rsync\
    && docker-php-ext-install gettext zip ldap \
    && wget http://prdownloads.sourceforge.net/lam/ldap-account-manager-${LAM_VERSION}.tar.bz2?download -O /tmp/ldap-account-manager.tar.bz2 \
    && tar xf /tmp/ldap-account-manager.tar.bz2 -C /var/www/ \
    && rm -rf /var/www/html \
    && mv /var/www/ldap-account-manager-${LAM_VERSION} /var/www/html \
    && mv $CONFIG $CONFIG.bak \
    && mkdir $CONFIG \
    && chown -R www-data:www-data /var/www/html/  \
    && ln -sf /dev/stdout /var/log/apache2/access.log \
    && ln -sf /dev/stderr /var/log/apache2/error.log \
    && apt-get autoremove -y && apt-get clean all \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY docker-php-entrypoint /usr/local/bin/
VOLUME $CONFIG