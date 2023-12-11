#!/bin/bash

mysql -h 172.20.0.2 -u dolibarr -P 3306 -p'dolibarr' dolibarr_db < requetes.sql
