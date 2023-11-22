#!/bin/bash

docker run -d \
	--name dolibarr \
	-p 8080:80 \
	im_dolibarr

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