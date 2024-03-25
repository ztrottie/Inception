# Use Debian Bullseye as the base image
FROM debian:bullseye

# Install MariaDB server
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# Copy custom configuration if needed
# COPY my-custom-config.cnf /etc/mysql/conf.d/

# Expose the MariaDB port
EXPOSE 3306

# Start MariaDB when the container launches
CMD ["mysqld", "--user=mysql", "--console"]