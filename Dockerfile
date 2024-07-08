# Use the official OpenJDK 8 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the compiled JAR file (built using `./mvnw clean package`) into the container
<<<<<<< HEAD
COPY target/demo-0.0.1-SNAPSHOT.jar /app/app.jar
=======
COPY target/aws-ecs-spring-boot-app-0.0.1-SNAPSHOT.jar /app/app.jar
>>>>>>> da9c196bb11d677e26e013d9b756d246a2d8bd7b

# Set the entry point for the application
ENTRYPOINT ["java", "-jar", "app.jar"]

# Expose the port your application will run on
EXPOSE 8080
