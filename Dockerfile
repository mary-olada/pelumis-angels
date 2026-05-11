FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY mary-photo.png /usr/share/nginx/html/mary-photo.png
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
