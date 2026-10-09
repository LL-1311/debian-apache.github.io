# Imagen a usar
FROM debian

# Actualizar SO
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y apache2 elinks

# Copia fichero deseado al contenedor en la ruta deseada

COPY mondongo.html /var/www/html

# Exponer puerto 80

EXPOSE 80

#Fijar directorio de trabajo

WORKDIR /var/www/html

#Ejecutar apache2

CMD ["apachectl", "-D", "FOREGROUND"]
