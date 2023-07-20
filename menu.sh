#!/bin/bash

function menu_generar() {
    read -p "Ingrese la cantidad de imagenes a generar: " cantidad_imagenes
    if [[ $cantidad_imagenes =~ ^[0-9]+$ ]]; then
        ./generar.sh "$cantidad_imagenes"
    else
        echo "Error: Ingrese un valor numerico valido."
    fi
}

function menu_procesar() {
    ./procesar.sh
}

function menu_descomprimir() {
    if [ -f "imagenes.tar.gz" ] && [ -f "imagenes_checksum.txt" ]; then
        ./descomprimir.sh imagenes.tar.gz imagenes_checksum.txt
    else
        echo "Error: No se encontraron los archivos imagenes.tar.gz e imagenes_checksum.txt."
    fi
}

function menu_comprimir() {
    ./comprimir.sh
}

while true
do
    echo "==== Menu ===="
    PS3="Seleccione una opcion: "
    options=("Generar imagenes" "Procesar imagenes" "Descomprimir archivos" "Comprimir directorio" "Salir")
    select opt in "${options[@]}"
    do
    case $REPLY in
        1)
        menu_generar
        ;;
        2)
        menu_procesar
        ;;
        3)
        menu_descomprimir
        ;;
        4)
        menu_comprimir
        ;;
        5)
        echo "Gracias por utilizar nuestra aplicacion."
        exit 0
        ;;
        *)
        echo "Opcion invalida. Por favor, seleccione una opcion valida."
        ;;
    esac
    done
done