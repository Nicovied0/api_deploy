# Usar una imagen base con OpenJDK 17
FROM openjdk:17-jre-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo JAR generado en el contenedor
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Exponer el puerto que la aplicación usará
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "demo.jar"]
