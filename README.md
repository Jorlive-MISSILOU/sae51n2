# sae51n2

# Dockerfile

conf.php
<?php
$dolibarr_main_db_type = 'mysqli';
$dolibarr_main_db_host = 'localhost';
$dolibarr_main_db_port = '3306';
$dolibarr_main_db_user = 'dolibarr';
$dolibarr_main_db_pass = 'dolibarr';
$dolibarr_main_db_name = 'dolibarr_db';
?>

/* $conf_file = 'htdocs/conf/conf.php';

// Vérifie si le fichier conf.php existe
if (!file_exists($conf_file)) {
    // Redirige vers la page d'authentification une fois l'installation terminée
    header('Location: http://localhost:8080/admin/index.php');
    exit;
}

// Si le fichier conf.php existe, incluez-le
include_once($conf_file); */