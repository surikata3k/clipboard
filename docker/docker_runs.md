### Mysql
```
 docker run -d -p 33060:3306 --name mysql-db  -e MYSQL_ROOT_PASSWORD=123456 --mount src=mysql-db-data,dst=/var/lib/mysql mysql
```

### Jenkins
```
docker run -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17
```
