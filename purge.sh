#!/bin/bash

docker rm $(docker stop $(docker ps -aq))
#docker rmi im_dolibarr
docker rmi $(docker images -aq)
