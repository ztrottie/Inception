FROM alpine:latest

RUN apk update && apk upgrade && apk add mariadb

EXPOSE 3306
CMD [ "mariadb" ]