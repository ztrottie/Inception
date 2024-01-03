FROM alpine:latest

RUN apk update && apt upgrade && apk add mariadb

EXPOSE 3306
CMD [ "mariadb" ]