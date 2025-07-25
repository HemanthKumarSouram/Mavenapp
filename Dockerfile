# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set work directory
WORKDIR /app

# Copy the built JAR into the image
COPY target/myapp-1.0-SNAPSHOT.jar app,jar
EXPOSE 6060

# Command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]

