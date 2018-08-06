FROM java:openjdk-8-jdk-alpine

ENV DB_URL="jdbc:mysql://db:3306/todo"\
    DB_USER="todo"\
    DB_PASSWORD="todo"

ADD target/todo-wildfly-swarm-1.0.0-SNAPSHOT-thorntail.jar /opt/wildfly-swarm.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/opt/wildfly-swarm.jar", "-Djava.net.preferIPv4Stack=true"]