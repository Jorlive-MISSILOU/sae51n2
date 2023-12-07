#!/bin/bash

mysql -h 172.19.0.3 -u dolibarr -P 3306 -p'dolibarr' dolibarr_db < requetes.sql
