# source=docker/dockerfile:1
FROM debian:latest

RUN apt-get update && apt-get install -y openjdk-11-jdk

COPY ChatServer.java ./

RUN javac /ChatServeur.java -encoding utf8

EXPOSE 9001/tcp
CMD ["java", "-cp", "ChatServeur"]
