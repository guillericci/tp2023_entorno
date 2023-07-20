FROM debian:latest
LABEL manteiner "Perna | Ricci"
RUN apt-get update && apt-get install -y imagemagick && apt-get install -y curl
COPY comprimir.sh descomprimir.sh procesar.sh generar.sh menu.sh /App/
WORKDIR /App
RUN chmod +x comprimir.sh descomprimir.sh procesar.sh generar.sh menu.sh
RUN mkdir Salida
CMD ["bash", "/App/menu.sh"]
