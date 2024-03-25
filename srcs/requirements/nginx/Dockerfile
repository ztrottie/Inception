FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install nginx -y && apt install openssl -y

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/ssl/key.key -out /etc/nginx/ssl/cert.crt -sha256 -days 3650 -nodes -subj "/C=CA/ST=Quebec/L=quebec/O=42/OU=inception/CN=ztrottie.42.fr"

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD [ "nginx", "-g", "daemon off;" ]