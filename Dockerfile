FROM openjdk:14

RUN ls
RUN pwd
RUN mkdir /app
WORKDIR /app
COPY .mvn ./.mvn
COPY pom.xml ./
COPY mvnw ./
RUN  ./mvnw dependency:resolve
COPY src ./src
RUN ./mvnw install
CMD ["java","-Dspring.profiles.active=hacktm404", "-jar","/app/target/now-1.0-SNAPSHOT.jar"]
