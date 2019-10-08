#!/bin/bash

cd /tmp

md5sum="9e6eee4e6df8d3474622bed952513fe5"
curl -LO https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.48.tar.gz

actual_md5_sum=$(md5sum mysql-connector-java-5.1.48.tar.gz | cut -f 1 -d " ")

echo "$actual_md5_sum"
echo "$md5sum"

if [ "$md5sum" = "$actual_md5_sum" ]; then
    echo "Shadums are equals, meaning the file is valid"
    exit 0
else
    echo "Shadums are not equal, meaning corrupt file"
    exit 1
fi