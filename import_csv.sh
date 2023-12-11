#!/bin/bash

#Import de données csv
mysql --local-infile=1 -h 172.20.0.2 -P 3306 -u dolibarr -p'dolibarr' < import.sql

# Vérification
if [ $? -eq 0 ]; then
    echo -e "##############################################################"
    echo -e "###### Remplissage de dolibarr_db réalisé avec succès ########"
    echo -e "##############################################################"
else
    echo -e "##########################################################"
    echo -e "######## Remplissage de dolibarr_db a échoué #############"
    echo -e "##########################################################"
fi 

