# Use official Tomcat base image
FROM tomcat:9.0-jdk17

# Remove default webapps (optional for cleaner deploy)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY community-chat.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]