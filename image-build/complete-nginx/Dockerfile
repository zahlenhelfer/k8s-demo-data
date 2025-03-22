FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html/index.html
ENTRYPOINT ["nginx", "-g", "daemon off;"]
