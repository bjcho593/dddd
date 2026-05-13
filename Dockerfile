# Imagen base de Python
FROM python:3.9-slim

# Directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Exponer el puerto de Flask
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]