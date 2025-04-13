# Usar una imagen base de OpenJDK (Java 11, por ejemplo)
FROM openjdk:17-jre-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo JAR al contenedor
COPY target/my-api.jar /app/my-api.jar

# Exponer el puerto en el que Spring Boot corre (usualmente 8080)
EXPOSE 8080

# Comando para ejecutar el archivo JAR
CMD ["java", "-jar", "my-api.jar"]
