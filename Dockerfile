# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
COPY . .

# Expose the port that the application runs on
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "library-management-system.jar"]
