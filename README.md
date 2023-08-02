
# Trabajo Práctico Final - Entorno de Programación - UNR FCEIA

## Comisión 3 - Cuatrimestre I - 2023

### Integrantes:
- Perna, Nahuel
- Ricci, Guillermo

### Inicializar clonando el repositorio

    git clone https://github.com/guillericci/tp2023_entorno.git
  
### Instrucciones para Docker

Para crear la imagen de Docker, ejecute el siguiente comando:

    docker build -t <nombre_imagen> .
  
  
Para ejecutar la aplicación en el contenedor Docker,puede ejecutar:

    docker run -it -v "$PWD/Salida:/App/Salida" <nombre_imagen>

Esto montará el directorio actual en el contenedor y ejecutará la aplicación.



### Descripción del proyecto

Este repositorio contiene el Trabajo Práctico Final de la materia "Entorno de Programación" de la Facultad de Ciencias Exactas, Ingeniería y Agrimensura de la Universidad Nacional de Rosario (UNR FCEIA).

El objetivo del proyecto es desarrollar un procesador de imágenes que permita generar, transformar, comprimir y descomprimir imágenes utilizando distintos scripts y herramientas.

---

### Estructura del proyecto

El proyecto se organiza en diferentes scripts, cada uno con una función específica:

- `generar.sh`: Genera imágenes utilizando un servicio web y las comprime en un archivo.
- `procesar.sh`: Procesa las imágenes generadas aplicándoles una transformación.
- `comprimir.sh`: Comprime el directorio de imágenes y genera archivos con listas de nombres válidos y total de personas con nombres que terminan en "a".
- `descomprimir.sh`: Descomprime archivos generados previamente y realiza operaciones de verificación.

---

### Instrucciones de uso

1. Clone este repositorio en su máquina local.
2. Ejecute el contenedor
3. Seleccione de un menú, las tareas a realizar


