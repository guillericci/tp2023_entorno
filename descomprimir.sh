#!/bin/bash

function verificar_sum() {
  comprimido=$1
  checksum=$2
  
  md5sum -c "$checksum" --quiet
  if [ $? -eq 0 ]; then
    echo "Descomprimiendo..."
  else
    echo "Error: La suma MD5 no coincide."
    exit 1
  fi
}

if [ $# -eq 2 ] # Checkeo el número de argumentos
then 
  comprimido=$1
  checksum=$2
else
  echo "Uso: ./descomprimir.sh <archivo_comprimido> <archivo_checksum>"
  exit 1
fi

verificar_sum "$comprimido" "$checksum"
tar -xzvf "$comprimido" && echo "Descomprimido exitosamente."
