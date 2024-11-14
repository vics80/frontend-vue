# Usar la imagen oficial de Node.js como imagen base
FROM node:18-alpine

WORKDIR /app

# Copiar los archivos de dependencias al directorio de trabajo
COPY package*.json ./

# Instalar las dependencias del proyecto
RUN npm install

# Copiar el resto de los archivos de la aplicación al contenedor
COPY . .

# Exponer el puerto que usa Vite (por defecto, 5173)
EXPOSE 5173

# Comando por defecto para iniciar la aplicación
CMD ["npm", "run", "dev"]
