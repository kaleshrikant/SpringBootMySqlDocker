
#Build stage

FROM gradle:latest AS BUILD
WORKDIR /usr/app/
COPY src /usr/app/src
COPY build.gradle /usr/app
RUN gradle build

# Package stage

FROM openjdk:latest
ENV JAR_NAME=SpringBootMySqlDocker-0.0.1-SNAPSHOT.jar
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME
COPY --from=BUILD $APP_HOME .
EXPOSE 8080
ENTRYPOINT exec java -jar $APP_HOME/build/libs/$JAR_NAME
