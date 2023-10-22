#!/bin/bash

read -p "Enter a path to frontend: " path
cd $path
npm run build
chmod -R 755 ./build
