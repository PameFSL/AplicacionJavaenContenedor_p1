# Pasos para contenerizar aplicación
1. Se crea un proyecto normal de java, se construye el proyecto y esto nos dará como resultado una nueva carpeta llamada "out" con los archivos que se mandarán a producción al momento de contenerizar la aplicación. <br>

    <img src="https://github.com/PameFSL/AplicacionJavaenContenedor_p1/blob/main/imagenes/ProductionFiles.png" width="40%">
    
2. Se crea un nuevo archivo llamado "Dockerfile" con los comandos necesarios para crear el contenedor y agregar los archivos necesarios a la imagen. 
    [Ver archivo Dockerfile](https://github.com/PameFSL/AplicacionJavaenContenedor_p1/blob/main/Dockerfile). 

    <img src="https://github.com/PameFSL/AplicacionJavaenContenedor_p1/blob/main/imagenes/pasos.png" width="70%">
    

## Comandos importantes
 - Para crear el contenedor, es importante estar en la direccion en donde se encuentra el proyecto y ejecutar: 
    <b> docker build -t nombreContenedor:version .  </b>
    
    Por ejemplo: 
    <b>docker build -t launchx-docker:1.0 .  </b>
    
 - Comando para ejecutar el contenedor:  <b>  docker run launchx-docker:1.0 </b>
 
 - Si se realizan cambios en el proyecto y se desea actualizar el contenedor, será necesario volver a ejecutar el primer comando (actualizando la version).     
    <b>docker build -t launchx-docker:2.0 .  </b>

    Y lo mismo para la ejecucion  <b>  docker run launchx-docker:2.0 </b>
