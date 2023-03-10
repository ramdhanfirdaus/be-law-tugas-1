# Base image
FROM gradle:7.4.0-jdk17

# Set working directory
WORKDIR /app

# Copy jar file to container
COPY build/libs/*.jar /app/

# Expose port 8080
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "app.jar"]