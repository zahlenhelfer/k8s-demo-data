## Setup your MySQL Database with NFS-Share

1. Create a Volume for you MySQL database on the nfs-server
2. Start a MySQL-Database Container with the Volume
3. Install the client-tools and test the connection
4. Stop the database, install Client-Tools & start a new database-server

# create a docker-volume with NFS-Properties

docker volume create \
--driver local \
--opt type=nfs \
--opt o=addr=nfs.dockerlabs.de,rw,nolock \
--opt device=:/exports/mysql \
mysql-data-vol

# create a mysql-container

docker run --name=mysql-with-nfs –dit \
 -p 3306:3306 \
 -e MYSQL_ROOT_PASSWORD=my-secret-pw \
 -v mysql-data-vol:/var/lib/mysql \
mysql:8

# Install Client-Tools on the Host

apt-get install -y mysql-client

# Connect to the MySQL Container via SQL-Tools

mysql -u root -p my-secret-pw -h 127.0.0.1 -P 3306
CREATE DATABASE demo-test-db;
exit

# Stop the Container

docker container stop mysql-with-nfs

# Run a second container and reuse fileshare

docker run --name=mysql-2-with-nfs –dit \
 -p 3306:3306 \
 -e MYSQL_ROOT_PASSWORD=my-secret-pw \
 -v mysql-data-vol:/var/lib/mysql \
mysql:8

# Retry to see database

mysql -u root -p my-secret-pw -h 127.0.0.1 -P 3306
SHOW DATABASES;
