FROM eclipse-temurin:17-jdk-alpine

# Define app home directory
ENV APP_HOME=/usr/src/app

# Create the directory inside image
RUN mkdir -p $APP_HOME

# Copy the built jar (make sure this path exists in the context!)
COPY target/*.jar $APP_HOME/app.jar

# Set working directory
WORKDIR $APP_HOME

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
