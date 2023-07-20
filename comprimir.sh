#!/bin/bash

function lista_imagenes() {
  ls -1 *.jpg > EdP_lista_imagenes.txt
}

function lista_nombres_validos() {
  grep -E '^[A-Z][a-z]' EdP_lista_imagenes.txt > EdP_lista_nombres_validos.txt
}

function total_nombres_con_a() {
  grep -c -E '^*[Aa]\.jpg' EdP_lista_nombres_validos.txt > EdP_total_nombres_con_fin_a.txt
}

function comprimir_archivos() {
  tar -czvf EdP_archivos_generados.tar.gz EdP_lista_imagenes.txt EdP_lista_nombres_validos.txt EdP_total_nombres_con_fin_a.txt *.jpg
}

if ls | grep -qE '\.jpg$' ; then
  lista_imagenes
  lista_nombres_validos
  total_nombres_con_a
  comprimir_archivos
  echo "Archivos generados y comprimidos exitosamente."
else
  echo "Error: No se encontraron imagenes para procesar."
  exit 1
fi

