#!/bin/bash

# Sauvegarde de la base de données MySQL
cp doli_mysql backup/mysql_backup -r

# Vérification
if [ $? -eq 0 ]; then
    echo -e "##############################################################"
    echo -e "###### sauvegarde dump de dolibarr_db réalisé avec succès ########"
    echo -e "##############################################################"
else
    echo -e "##########################################################"
    echo -e "######## sauvegarde dump de dolibarr_db a échoué #############"
    echo -e "##########################################################"
fi 

# Sauvegarde des fichiers Dolibarr
docker cp sae51n2_dolibarr_1:/var/www/html $(pwd)/backup
# Vérification
if [ $? -eq 0 ]; then
    echo -e "##############################################################"
    echo -e "###### sauvegarde de dolibarr réalisé avec succès ########"
    echo -e "##############################################################"
else
    echo -e "##########################################################"
    echo -e "######## sauvegarde de dolibarr a échoué #############"
    echo -e "##########################################################"
fi 
