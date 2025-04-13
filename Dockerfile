# Usar una imagen base con OpenJDK 17 (incluyendo el JDK)
FROM openjdk:17-jdk-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo JAR generado por Maven o Gradle al contenedor
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto en el que Spring Boot correrá
EXPOSE 8080

# Comando para ejecutar la aplicación Spring Boot
CMD ["java", "-jar", "app.jar"]
