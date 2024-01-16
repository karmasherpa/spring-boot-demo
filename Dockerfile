# Use an official JDK 17 runtime as a base image

FROM maven:3.8.5-openjdk-17 as build
# Set the working directory inside the container
WORKDIR /app
COPY . /app

RUN  mvn -version
RUN mvn clean package

RUN ls -alht target

FROM maven:3.8.5-openjdk-17
WORKDIR /app
# Copy the JAR file from your target directory to the container
COPY --from=build /app/target/spring-boot-0.0.1-SNAPSHOT.jar /app/spring-boot-app.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/spring-boot-app.jar"]


