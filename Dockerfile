FROM openjdk:8-jdk-alpine AS build

WORKDIR /app
COPY . .

RUN apk add --no-cache maven && \
    mvn clean install && \
    apk del maven

FROM openjdk:8-jdk-alpine

EXPOSE 8080

COPY --from=build /app/target/api-0.0.1-SNAPSHOT.jar /app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]
