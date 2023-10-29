FROM openjdk:17-jdk-slim
LABEL authors="mertkaya"
ARG JAR_FILE=target/gateway-service-0.0.1-SNAPSHOT.jar
WORKDIR /opt/app
COPY ${JAR_FILE} app.jar
EXPOSE 8765
ENTRYPOINT ["java", "-jar", "app.jar"]