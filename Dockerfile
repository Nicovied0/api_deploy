# Usar una imagen base como Node.js o Python, dependiendo de tu stack
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY . .

# Instalar dependencias
RUN pip install -r requirements.txt

# Exponer el puerto de la API
EXPOSE 5000

# Comando para ejecutar la API
CMD ["python", "app.py"]
