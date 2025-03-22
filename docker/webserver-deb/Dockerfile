FROM nginx:1.24
RUN apt-get update && apt-get upgrade -y
COPY index.html /usr/share/nginx/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]

