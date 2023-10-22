#!/bin/bash
# use while in before deployment folder

read -p "Enter new project name: " new
read -p "is this an update? y/n" update 

if [ "$update" = "n" ]; then
mkdir ../"$new"
file = "$new"
else
mkdir ../"$new"_backup
file = "$new"_backup
fi

read -p "enter new project name: " project
if [ "$update" = "n" ]; then
cp -r "$project" ../"$new"
cp -r ./deploy_files/ ../"$new"
else
read -p "enter existing project name: " exc
cp -r ../"$exc" ../"$new_backup"
rsync -avu "$project"/ ../"$exc"/
fi