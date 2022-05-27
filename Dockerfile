#Se utiliza OpenJDK como imagen base del proyecto VERSION 18
FROM openjdk:18

#Se crea directorio para los archivos de la aplicacion que estarán
# contenidos en el contenedor
RUN mkdir /app

# Se copian los archivos de la computadora (host) al conotenedor (o imagen que se dea crear)
COPY out/production/Practica_01-ContenedorApp-DB/ /app

# Asignamos el diractorio para ejecuciones futuras de comandos
WORKDIR /app

# Clase a ejecutar (en este caso: Main)
CMD java Main

#Comando para crear el contenedor con el nombre launchx-docker
#docker build -t launchx-docker:1.0 .

# Comando para validar la creacion del contenedor
# docker images

#Hasta este punto ya contenerizamos nuestra aplicacion de java

# Para ejecutar la aplicacion
# docker run launchx-docker:1.0
