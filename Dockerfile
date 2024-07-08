#FROM openjdk:17
#EXPOSE 8080
#ADD target/sprinmvc.war spring-boot-docker.war	
#ENTRYPOINT ["java","-war","/sprinmvc.war"] 



# Use the official Tomcat image as base
#FROM tomcat:latest

# Remove existing WAR file from Tomcat webapps directory
#RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
#COPY target/sprinmvc.war sprinmvc.war

# Expose the default Tomcat port
#EXPOSE 8080

# Start Tomcat when the container launches
#CMD ["catalina.sh", "run"]



FROM tomcat:9.0.89-jre8
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/sprinmvc.war sprinmvc.war
EXPOSE 8080
CMD [ "catalina.sh", "run" ]

