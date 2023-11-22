# Utilisez une image de base avec un serveur web et PHP
FROM php:7.4-apache

# Informations sur le mainteneur
LABEL maintainer="Jorlive MISSILOU <jorlivemissilou00@gmail.com>"

# Variables d'environnement pour Dolibarr
ENV DOLIBARR_VERSION 15.0.1

# Téléchargement et installation de Dolibarr
RUN apt-get update && \
    apt-get install -y wget && \
    wget -O dolibarr.tgz "https://downloads.sourceforge.net/project/dolibarr/Dolibarr%20ERP-CRM/${DOLIBARR_VERSION}/dolibarr-${DOLIBARR_VERSION}.tgz" && \
    tar -xvzf dolibarr.tgz -C /var/www/html/ --strip-components=1 && \
    rm dolibarr.tgz && \
    chown -R www-data:www-data /var/www/html/

# Configuration d'Apache
RUN a2enmod rewrite

# Exposition du port
EXPOSE 80

# Commande de démarrage
CMD ["apache2-foreground"]
