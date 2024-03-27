#!/bin/bash

service mysql start

is_mysql_ready() {
    mysqladmin ping &>/dev/null
}

until is_mysql_ready; do
    echo "mysql not ready..."
    sleep 1
done

echo -e "\ny\ny\n${MYSQL_ROOT_PASSWORD}\n${MYSQL_ROOT_PASSWORD}\ny\ny\ny\ny\n" | /usr/bin/mysql_secure_installation

echo -e "${MYSQL_ROOT_PASSWORD}" | mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};\
                                                        CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';\
                                                        GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'localhost';\
                                                        FLUSH PRIVILEGES;\
                                                        SHOW DATABASES;"

service mariadb stop
echo -e "\n"
