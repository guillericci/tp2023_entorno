#!/bin/bash

function aplicar_transformacion() {
  for imagen in *[A-Z][a-z]*.jpg
  do
    if [[ ! $imagen == conv_* ]]; then
      convert "$imagen" -gravity center -resize 512x512+0+0 -extent 512x512 "conv_${imagen%.*}.jpg"
      echo "Procesando ${imagen}"
    else
      echo "Imagen $imagen ya convertida, se omitira."
    fi
  done
}

  if ls | grep -qE '\.jpg$' ; then
    aplicar_transformacion
  else
    echo "Error: No se encontraron imagenes para procesar."
    exit 1
  fi

