# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jdk-alpine
# copy WAR into image
COPY target/spring-boot-app-0.0.1-SNAPSHOT.war /app.war 
# run application with this command line 
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.war"]
EXPOSE 8081
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar docker.jar
