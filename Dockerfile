#FROM openjdk:17-alpine
FROM amazoncorretto:17-alpine

#RUN addgroup -S spring && adduser -S spring -G spring
#RUN mkdir /app && chown spring:spring /app
#USER spring:spring
RUN mkdir /app
WORKDIR /app

COPY target/demo-app-0.0.1-SNAPSHOT.jar /app

ENTRYPOINT ["java","-jar","demo-app-0.0.1-SNAPSHOT.jar"]