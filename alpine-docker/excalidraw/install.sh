#!/bin/bash

INSTALL_PATH=/srv/docker/excalidraw/

mkdir -p $INSTALL_PATH
wget -P $INSTALL_PATH https://raw.githubusercontent.com/jlai403/proxmox-scripts/refs/heads/main/docker-excalidraw/docker-compose.yml

cd $INSTALL_PATH
docker compose up -d
