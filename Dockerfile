FROM openjdk:8-jdk-alpine

ENV PORT=9009

EXPOSE 9009

LABEL maintainer="github.com/wyx176"

ADD target/JrebelLicenseServer.jar /opt/jrebel.jar
CMD ["sh", "-c", "exec java -jar /opt/jrebel.jar -p \"${PORT}\""]


