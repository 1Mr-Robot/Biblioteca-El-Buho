FROM nginx:alpine

# Elimina la configuración por defecto de nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia la configuración de nginx.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia los archivos del sitio al directorio de nginx
COPY . /usr/share/nginx/html

EXPOSE 80