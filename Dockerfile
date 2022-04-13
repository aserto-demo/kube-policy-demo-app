FROM openjdk:17-alpine

#RUN apk add --no-cache python3 python3-dev py3-pip build-base && pip3 install awscli==1.18.1

RUN mkdir /app
WORKDIR /app

COPY target/demo-app-0.0.1-SNAPSHOT.jar /app

ENTRYPOINT ["java","-jar","demo-app-0.0.1-SNAPSHOT.jar"]