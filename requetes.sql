-- Tous les clients
select "#########Tous les clients########" as "#########requetes#########";
SELECT client,nom,address,zip,town,email FROM llx_societe WHERE fournisseur=0;

-- Tous les Fournisseurs
select "##############Tous les fournisseurs#############" as "############## requetes ############";
SELECT fournisseur,nom,address,zip,town,email FROM llx_societe WHERE fournisseur!=0;