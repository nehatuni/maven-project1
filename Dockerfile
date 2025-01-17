# Use Tomcat as the base image
FROM tomcat:9.0-jdk17

# Copy the WAR file from the local target folder to the Tomcat webapps directory
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps/

# Expose the Tomcat default port (8080)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

