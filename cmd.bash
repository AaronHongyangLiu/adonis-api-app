#/usr/bin/env bash

adonis migration:refresh | grep 'Error'

if [ $? -eq 1 ]
then 
    echo "Success, can start seeding"
else
    echo "Failed, do not run seeding"
fi