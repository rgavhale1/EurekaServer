FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project’s jar file into the container at /app
COPY target/EurekaServer-0.0.1-SNAPSHOT.jar /app/EurekaServer.jar

# Make port 8761 available to the world outside this container
EXPOSE 8761

# Run the jar file
ENTRYPOINT ["java", "-jar", "EurekaServer.jar"]
