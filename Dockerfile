# Use OpenJDK 11 for the base image
FROM openjdk:11-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the Maven build artifact (jar file) into the container
COPY target/java-web-app-0.0.1-SNAPSHOT.jar java-web-app.jar

# Expose port 8080 to the outside
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "java-web-app.jar"]
