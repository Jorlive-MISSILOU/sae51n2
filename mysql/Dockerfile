FROM mysql:8

# Copie le fichier de configuration personnalisé
COPY mysql/my.cnf /etc/mysql/conf.d/my.cnf

# Définir les utilisateurs et les privilèges MySQL
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=dolibarr_db
ENV MYSQL_USER=dolibarr
ENV MYSQL_PASSWORD=dolibarr

# Copier le script SQL d'initialisation dans le conteneur
COPY mysql/init.sql /docker-entrypoint-initdb.d/

# Expose le port
EXPOSE 3306

CMD ["mysqld"]