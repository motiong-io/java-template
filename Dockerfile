FROM gradle:8.4-jdk17

WORKDIR /app

COPY . .

RUN gradle build

EXPOSE 8080

ENTRYPOINT java -jar ./app/build/libs/app.jar
