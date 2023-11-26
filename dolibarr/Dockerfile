FROM php:7.4-apache

# Installe les dépendances nécessaires
RUN apt-get update && apt-get install -y wget \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libxml2-dev \
    libzip-dev \
    unzip \
    libicu-dev \
    libldap2-dev \
    libcurl4-openssl-dev \
    libonig-dev \
    libc-client-dev \
    libkrb5-dev
RUN apt-get install -y libpng-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j$(nproc) gd && \
    docker-php-ext-configure imap --with-imap-ssl --with-kerberos && \
    docker-php-ext-install -j$(nproc) intl imap zip && \
    docker-php-ext-install -j$(nproc) calendar && \
    docker-php-ext-install mysqli


# Active les modules Apache nécessaires pour Dolibarr
RUN a2enmod rewrite

# Le repertoire des documents
RUN mkdir -p documents && \
    chmod 777 documents && \
    chown www-data:www-data documents

# Installe Dolibarr
WORKDIR /var/www/html
RUN wget https://downloads.sourceforge.net/project/dolibarr/Dolibarr%20ERP-CRM/18.0.3/dolibarr-18.0.3.tgz && \
    tar -zxvf dolibarr-18.0.3.tgz --strip-components=1 && \
    rm dolibarr-18.0.3.tgz

RUN mkdir -p htdocs/conf/ && \
    touch htdocs/conf/conf.php && \
    chmod 777 htdocs/conf/conf.php && \
    chown www-data:www-data htdocs/conf/conf.php

# Copie du fichier conf.php
COPY dolibarr/conf.php htdocs/conf/conf.php
RUN chmod 777 htdocs/conf/conf.php

# Copie la configuration personnalisée
COPY dolibarr/dolibarr.conf /etc/apache2/sites-available/000-default.conf

# Expose le port
EXPOSE 80

CMD ["apache2-foreground"]
