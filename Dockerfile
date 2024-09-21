FROM ubuntu:22.04
LABEL MAINTAINER="abhijit herkal <abhijit.herkal@gmail.com>"
RUN apt update && apt install -y nginx
COPY src/index.html /usr/share/nginx/html
COPY src/index.html /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]