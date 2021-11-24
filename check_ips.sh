#!/bin/bash

# definim culorile
RED="\e[31m"
GREEN="\e[32m"
NC='\e[0m' #nonculoare

# extragem lista de IP-uri, le sortam si stergem duplicate, apoi le salvam intr-un fisier temporar
while read line; do
  ip="$(grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' <<< "$line")"
  echo "$ip"
done < $1| sort | uniq > ip_list.tmp

# verificam status code-ul pentru fiecare IP din list si afisam mesajul colorat GREEN pentru 200 sau RED pentru orice altceva
for ip in `cat ip_list.tmp`
do
  cod=$(curl -s -o /dev/null --connect-timeout 5 -w "%{http_code}" $ip)
  if [ $cod -eq 200 ]
      then
        echo -e "${GREEN}$ip page is UP${NC}"
        else
        echo -e "${RED}$ip page is DOWN${NC}"
    fi
done

# stergem fisierul temporar ce contine IP-urile
rm -f ip_list.tmp