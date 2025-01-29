### Mysql
```
 docker run -d -p 33060:3306 --name mysql-db  -e MYSQL_ROOT_PASSWORD=123456 --mount src=mysql-db-data,dst=/var/lib/mysql mysql
```

### Oracle
```
docker run --name oracle -p 1521:1521 -e ORACLE_PWD=123456 -v /opt/oracle/oradata:/opt/oracle/oradata container-registry.oracle.com/database/free:latest
```

### Postgres
```
docker run -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=123456 -e POSTGRES_DB=postgres -d postgres
```

### Jenkins
```
docker run -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17
```
