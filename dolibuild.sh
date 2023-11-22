#!/bin/bash
docker build -t im_dolibarr -f Dockerfile .

# Vérification
if [ $? -eq 0 ]; then
    echo -e "#############################################################################"
    echo -e "###### Construction de l'image du serveur Dolibarr réalisée avec succès ########"
    echo -e "#############################################################################"
else
    echo -e "###########################################################################"
    echo -e "######## La construction de l'image du serveur Dolibarr a échoué #############"
    echo -e "###########################################################################"
fi 

