# Base image
FROM gradle:7.3.3-jdk11-alpine

# Set working directory
WORKDIR /app

# Copy jar file to container
COPY build/libs/*.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "app.jar"]