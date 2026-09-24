FROM nginx:alpine

# Supprimer la config nginx par défaut
RUN rm /etc/nginx/conf.d/default.conf

# Config nginx minimale pour servir du HTML statique
COPY nginx.conf /etc/nginx/conf.d/app.conf

# Copier la présentation
COPY ComprendreValhalla.html /usr/share/nginx/html/index.html
# Copier les images
COPY images /usr/share/nginx/html/images
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]  