# sae51n2

## Problemes rencontrés

- Quelques petits problèmes recurrents de connexion à la bdd
    - Je me suis penché sur la mise en réseau en des conteneurs, des utilisateurs et des droits nécéssaires
- Activer l'automatisation de la configuration d'installation
     - Meme avec le fichier conf.php, il arrive souvent qu'il ne puisse pas etre pris compte, meme étant dans son repertoire dédié. Car je verifiais toujours manuellement avec un "docker exec -it sae51n2_dolibarr_1 /bin/bash" pour bien inspecter le contenu.

- Importer les données dans la base de données:
    - J'ai du me connecter à la bdd manuellement regarder comment la la bdd et les tables sont crées afin d'identilfier la bonne tables pour les clients et fourninsuers; et aussi les champs de colonnes de la table en question, pour génerer des fichiers de données csv conformes.
