FROM ubuntu:latest
EXPOSE 8070
COPY . ./
RUN apt update
RUN apt install openjdk-17-jdk -y
RUN apt install maven -y
RUN mvn clean install
ENTRYPOINT ["java","-jar","target/simple.project-0.0.1-SNAPSHOT.jar"]
