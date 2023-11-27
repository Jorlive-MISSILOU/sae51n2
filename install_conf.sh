#!/bin/bash

# Définissez les paramètres de configuration
db_host="localhost"
db_port="3306"
db_name="dolibarr_db"
db_type="mysqli"
create_db="0"
db_prefix="llx_"
db_user="dolibarr"
db_pass="dolibarr"
admin_user="dolibarr"
admin_pass="dolibarr"
language="fr"

# Serveur web
server_name="localhost"

# Répertoire contenant les pages web
document_root="/var/www/dolibarr/htdocs"

# Répertoire devant contenir les documents générés (PDF, etc.)
document_dir="/var/lib/dolibarr/documents"

# URL racine
root_url="http://localhost:8080"

# Visitez la page web d'installation de Dolibarr
wget -O - "http://localhost:8080/install/fileconf.php" > /dev/null

# Envoyez les informations de configuration à la page web d'installation
curl -X POST -F "db_host=$db_host" -F "db_port=$db_port" -F "db_name=$db_name" -F "db_type=$db_type" -F "db_prefix=$db_prefix" -F "create_db=$create_db" -F "db_user=$db_user" -F "db_pass=$db_pass" -F "admin_user=$admin_user" -F "admin_pass=$admin_pass" -F "language=$language" -F "server_name=$server_name" -F "document_root=$document_root" -F "document_dir=$document_dir" -F "root_url=$root_url" "http://localhost:8080/"

# Vérifiez que l'installation a réussi
status_code=$(curl -I "http://localhost:8080/")
if [[ $status_code == "200" ]]; then
    echo "L'installation de Dolibarr a réussi."
else
    echo "L'installation de Dolibarr a échoué."
fi
