#!/bin/bash

function descargar_imagenes() {
  cantidad_imagenes=$1
  nombres=($(curl -s https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv | tr ' ' '_' | cut -d ',' -f1)) 
  for ((i=1; i<=cantidad_imagenes; i++))
  do
    nombre_persona=${nombres[$RANDOM % ${#nombres[@]}]}
    curl -s "https://thispersondoesnotexist.com/" -o "${nombre_persona}.jpg"
    echo "Descargando imagen para: ${nombre_persona}..."
    sleep 5
  done
}

function comprimir_y_generar_checksum() {
  tar -czvf imagenes.tar.gz *.jpg
  md5sum imagenes.tar.gz > imagenes_checksum.txt
}

if [ $# == 1 ] # Checkeo el numero de argumentos
then
  cantidad_imagenes=$1
else
  echo "Uso: ./generar.sh <cantidad_imagenes>"
  exit 1
fi

descargar_imagenes $cantidad_imagenes
comprimir_y_generar_checksum
