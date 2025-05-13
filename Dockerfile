FROM eclipse-temurin:17-jdk-alpine
# Install curl (optional, only if needed by the app or for debugging)
RUN apk add --no-cache curl
WORKDIR /app
EXPOSE 8080
ADD target/spring-boot-aws-deploy-service spring-boot-aws-deploy-service
ENTRYPOINT ["java", "-jar", "spring-boot-aws-deploy-service"]

