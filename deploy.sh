#!/bin/bash
read -p "Enter the path to your project: " path
cd "$path"
read -p "does this project have a bazak like architecture? y/n" bazak

if [ "$bazak" = "y" ]; then
cd ./backend/frontend
npm run build
chmod -R 755 ./build
read -p "Enter the path to your compose file: " comp
docker-compose -f "$comp" up -d --build
else
./build_&_chomod.sh
read -p "Enter the path to your compose file: " comp
docker-compose -f "$comp" up -d --build
fi

