# 构建阶段
FROM maven:3.8.4-openjdk-8 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# 运行阶段
FROM openjdk:8-jdk-alpine
LABEL maintainer="github.com/wyx176"
COPY --from=builder /app/target/JrebelLicenseServer.jar /opt/jrebel.jar
EXPOSE 9009
CMD ["sh", "-c", "exec java -jar /opt/jrebel.jar -p \"${PORT:-9009}\""]
