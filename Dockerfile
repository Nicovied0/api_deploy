# Usar una imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de la API al contenedor
COPY . .

# Instalar dependencias
RUN pip install -r requirements.txt

# Exponer el puerto que la API usará
EXPOSE 5000

# Comando para iniciar la API
CMD ["python", "app.py"]
