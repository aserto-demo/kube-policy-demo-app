FROM openjdk:17-jdk-alpine

RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring

COPY . .
RUN ./mvnw package

ENTRYPOINT ["java","-jar","/app.jar"]