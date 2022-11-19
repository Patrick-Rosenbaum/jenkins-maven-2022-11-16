FROM openjdk:18.0.2.1-oraclelinux8
ADD target/java-17-maven-project-1.0-SNAPSHOT.jar app.jar
CMD ["java", "-jar","app.jar"]
#EXPOSE 8080