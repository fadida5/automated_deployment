#!/bin/bash

read -p "Enter a search pattern: " pattern

docker stop  $(docker ps |grep -oE "$pattern" | grep -oE '^[0-9a-fA-F]+')

# docker images | grep -oE "$pattern" | grep -oE '[0-9a-fA-F]{12}' | while read -r id; do docker rmi -f "$id"; done
docker-compose -f ./comp.yml up -d --build