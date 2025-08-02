#!/bin/bash

INSTALL_PATH=/srv/docker/exclidraw/

mkdir -p $INSTALL_PATH
chmod 750 /srv/docker

wget -P $INSTALL_PATH https://gitub.com/jlai403/proxmox-scripts/docker-excalidraw/docker-compose.yml

cd $INSTALL_PATH
docker compose up -d
