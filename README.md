Start db:
```
docker run --name mariadb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -e MYSQL_DATABASE=todo -e MYSQL_USER=todo -e MYSQL_PASSWORD=todo -d mariadb
```