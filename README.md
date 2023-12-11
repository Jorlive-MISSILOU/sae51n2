# SAE51 n°2

## Plan du projet

Ce projet vise à internaliser en dockerisant Dolibarr, un logiciel ERP/CRM

- Dans le repertoire dolibarr, se trouve:
    - le Dockerfile pour la construction de l'image de Dolibarr
    - conf.php et dolibarr.conf, les fichiers de configuration de dolibarr

- Dans le repertoir mysql, se trouve:
    - Dockerfile, pour la construction de l'image du serveur mysql
    - init.sql et my.cnf, les fichiers de configuration de mysql

- doli_docs: le volume de données de dolibarr
- doli_mysql: le volume de données du serveur mysql
- backup: le repertoire dans lequel on stocke la sauvegarde de l'ensemble.
- install.sh: pour lancer tout le système