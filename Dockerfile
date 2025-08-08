# Start with a Java 17 base image (adjust version if needed)
FROM eclipse-temurin:17-jdk-alpine

# Copy the jar built by Maven or Gradle
COPY target/*.jar app.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Expose port 8080
EXPOSE 8080
