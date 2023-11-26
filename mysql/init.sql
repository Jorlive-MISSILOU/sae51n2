CREATE DATABASE IF NOT EXISTS dolibarr_db;
USE dolibarr_db;

CREATE USER IF NOT EXISTS 'dolibarr'@'localhost' IDENTIFIED BY 'dolibarr';
GRANT ALL PRIVILEGES ON dolibarr_db.* TO 'dolibarr'@'localhost';
FLUSH PRIVILEGES;
