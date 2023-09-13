#!/bin/bash

# Colores
greenColor="\e[0;32m\033[1m"
endColor="\033[0m\e[0m"
redColor="\e[0;31m\033[1m"
blueColor="\e[0;34m\033[1m"
yellowColor="\e[0;33m\033[1m"
purpleColor="\e[0;35m\033[1m"
turquoiseColor="\e[0;36m\033[1m"
grayColor="\e[0;37m\033[1m"

# Comprobación de permisos
if [ "$(id -u)" -ne 0 ]; then
  echo -e "${redColor}Este script debe ejecutarse con permisos de administrador (sudo)${endColor}"
  exit 1
fi

# Ejecutar el escaneo
scan_result=$(sudo arp-scan --localnet | grep 192 | awk 'NR>1')

# Verificar si hay resultados
if [ -z "$scan_result" ]; then
  echo -e "${redColor}No se encontraron equipos en la red${endColor}"
  exit 0
fi

# Mostrar resultados formateados
echo -e "${blueColor}Equipos en la red:${endColor}\n"
echo "$scan_result" | while read -r line; do
  ip=$(echo "$line" | awk '{print $1}')
  mac=$(echo "$line" | awk '{print $2}')
  nombre=$(echo "$line" | awk '{print $3}')
  echo -e "El equipo ${greenColor}${nombre}${endColor} (${yellowColor}${mac}${endColor}) tiene la IP ${redColor}${ip}${endColor}"
done
