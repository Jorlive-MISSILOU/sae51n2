#!/bin/bash

# Construction des images et lancement des conteneurs
./build.sh

#sleep 60
# Import des données
./import_csv.sh

# Requetes SQL
./requetesql.sh

# Sauvegarde des données
./backup.sh

echo "0 23 * * 0 backup.sh" | crontab -
# Vérification
if [ $? -eq 0 ]; then
    echo -e "##############################################################"
    echo -e "#######Planification de la sauvegarde ajoutée avec succès.###"
    echo -e "##############################################################"

else
    echo -e "##############################################################"
    echo -e " #################Échec de la sauvegarde ######################"
    echo -e "##############################################################"

fi
