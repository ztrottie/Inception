# Use Debian Bullseye as the base image
FROM debian:buster

# Install MariaDB server
RUN apt update && apt upgrade -y && apt-get install mariadb-server -y && apt-get install systemd -y


COPY tools/entrypoint.sh entrypoint.sh
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x /entrypoint.sh

EXPOSE 3306

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "mysqld_safe" ]