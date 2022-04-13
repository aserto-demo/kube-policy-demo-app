FROM openjdk:17-jdk-alpine

RUN addgroup -S spring && adduser -S spring -G spring
RUN mkdir /app && chown spring:spring /app
USER spring:spring
WORKDIR /app

COPY target/hello-app-0.0.1-SNAPSHOT.jar /app

ENTRYPOINT ["java","-jar","hello-app-0.0.1-SNAPSHOT.jar"]