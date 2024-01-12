# Use an official JDK 17 runtime as a base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your target directory to the container
COPY target/spring-boot-0.0.1-SNAPSHOT.jar /app/spring-boot-app.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/spring-boot-app.jar"]


