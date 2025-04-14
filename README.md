# Tarea 4: Cambiar Color con Cookies

Este proyecto es una aplicación web simple desarrollada con Jakarta EE que demuestra el uso de cookies para cambiar el color del texto en una página web.

## Características

- Permite al usuario seleccionar un color de una lista desplegable.
- Utiliza cookies para almacenar la preferencia de color del usuario.
- Cambia dinámicamente el color del texto en la página basado en la selección del usuario.

## Tecnologías utilizadas

- Jakarta EE
- JSP (JavaServer Pages)
- Servlets
- Maven
- Tomcat (como servidor de aplicaciones)

## Estructura del proyecto

- `src/main/java/`: Contiene los archivos Java, incluyendo el servlet `CambiarColorServlet`.
- `src/main/webapp/`: Contiene los archivos web, incluyendo `index.jsp`.
- `pom.xml`: Archivo de configuración de Maven que define las dependencias y plugins del proyecto.

## Cómo ejecutar

1. Asegúrate de tener instalado Maven y Tomcat.
2. Clona este repositorio.
3. Navega hasta el directorio del proyecto.
4. Ejecuta `mvn clean install` para compilar el proyecto y crear el archivo WAR.
5. Despliega el archivo WAR generado en Tomcat.
6. Accede a la aplicación a través de tu navegador web en `http://localhost:8080/webapp-cookie-tarea4`.

## Configuración de Tomcat

El proyecto está configurado para desplegarse en Tomcat. Asegúrate de que las credenciales en el `pom.xml` coincidan con tu configuración local de Tomcat:

```xml
<configuration>
    <url>http://localhost:8080/manager/text</url>
    <username>admin</username>
    <password>12345</password>
</configuration>
