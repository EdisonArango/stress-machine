# stress-machine
Máquina de docker con mysqlslap, jmeter y wrk

### Para iniciar el contenedor se requiere docker y docker-compose
> Ejecutar el siguiente comando:

`docker-compose up -d`

> El `-d` se usa para iniciar el contenedor en modo background

> La primera vez que se ejecute este comando se tardará mientras crea la imagen del contenedor, **se recomienda una buena conexión a internet**

> Podemos notar nuestro contenedor corriendo con el comando `docker ps`

### Para ingresar a nuestro contenedor basta con ejecutar

`docker exec -it stress-machine bash`

> **mysqlslap, jmeter y wrk** ya se encuentran en la variable de entorno $PATH, por lo que pueden ejecutarse desde cualquier parte del contenedor

### Dentro del contendor se usa el siguiente comando para salir

`exit`

### Para apagar nuestro contenedor se usa el siguiente comando

`docker stop stress-machine`
