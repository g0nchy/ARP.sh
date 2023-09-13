# ARP.sh
Este script de Bash permite escanear una red local y mostrar las direcciones IPv4 de los equipos conectados, junto con sus nombres y direcciones MAC asociadas. Utiliza la herramienta `arp-scan` para realizar el escaneo y formatea la salida para proporcionar una lista clara y legible de los dispositivos en la red.

## Instrucciones de Uso:

1. Asegúrate de ejecutar el script con permisos de administrador (sudo).
2. El script ejecutará un escaneo de la red local y mostrará la información de los dispositivos encontrados.
3. La salida incluirá el nombre del equipo, la dirección MAC y la dirección IPv4 asociada.

## Requisitos:

- El script utiliza la herramienta `arp-scan`. Asegúrate de tener esta herramienta instalada en tu sistema.

## Ejecución
- Dale permisos de ejecución con: `chmod +x ARP.sh`
- Ejecutalo con: `sudo ./ARP.sh`
