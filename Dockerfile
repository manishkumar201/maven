FROM maven:3.8.3-openjdk-17
EXPOSE 8070
COPY . ./
RUN mvn clean install
ENTRYPOINT ["java","-jar","target/simple.project-0.0.1-SNAPSHOT.jar"]
