FROM openjdk:8-jdk-alpine

EXPOSE 8081

LABEL maintainer="github.com/wyx176"

ADD target/JrebelBrainsLicenseServerforJava.jar /opt/jrebel.jar
CMD java -jar /opt/jrebel.jar -p 8081

