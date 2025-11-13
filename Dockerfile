FROM bellsoft/liberica-openjdk-alpine:21
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

ENV HOSTNAME=localhost

ENTRYPOINT ["java", "-jar", "app.jar"]

EXPOSE 3100