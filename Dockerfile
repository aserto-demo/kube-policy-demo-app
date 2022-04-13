FROM openjdk:17-jdk-alpine

RUN addgroup -S spring && adduser -S spring -G spring
RUN mkdir /app && chown spring:spring /app
USER spring:spring
WORKDIR /app

COPY . .
RUN ./mvnw package

ENTRYPOINT ["java","-jar","/app.jar"]