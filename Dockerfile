FROM openjdk:18.0.2.1-oraclelinux8
COPY   --from=build home/app/target/java-17-maven-project-1.0-SNAPSHOT.jar app.jar
CMD ["java", "-jar","app.jar"]
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
#EXPOSE 8080