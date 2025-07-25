# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set work directory
WORKDIR /Mavenapp

# Copy the built JAR into the image
COPY target/myapp-1.0-SNAPSHOT.jar

# Command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]

