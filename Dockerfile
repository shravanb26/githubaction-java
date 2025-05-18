# Use a specific Tomcat version for stability
FROM tomcat:9.0

# Copy WAR file to Tomcat webapps and set it as the ROOT app
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
ENTRYPOINT ["catalina.sh", "run"]

