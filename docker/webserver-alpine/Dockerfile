FROM nginx:1.24-alpine
RUN apk update && apk upgrade
COPY index.html /usr/share/nginx/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]

