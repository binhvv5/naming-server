FROM openjdk:17

# Setting up work directory
WORKDIR /app

# Copy the jar file into our app
COPY ./target/naming-server-0.0.1-SNAPSHOT.jar .

EXPOSE 8761

#ENTRYPOINT exec java -jar -Dspring.profiles.active=prod -Djava.net.preferIPv4Stack=true /app/naming-server-0.0.1-SNAPSHOT.jar
ENTRYPOINT exec java -jar -Djava.net.preferIPv4Stack=true /app/naming-server-0.0.1-SNAPSHOT.jar