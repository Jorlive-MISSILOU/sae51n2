-- Remplissage de la bdd
-- utilisation de la bdd "dolibarr_db"
-- SET GLOBAL local_infile = 1;
use dolibarr_db

-- Insérer les données clients
LOAD DATA LOCAL INFILE 'clients.csv'
INTO TABLE llx_societe
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(nom, client, code_client, address, zip, town, fk_pays, phone, email, default_lang);

-- Insérer les données fournisseurs
LOAD DATA LOCAL INFILE 'fournisseurs.csv'
INTO TABLE llx_societe
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(nom, fournisseur, code_fournisseur, address, zip, town, fk_pays, phone, email, default_lang);
