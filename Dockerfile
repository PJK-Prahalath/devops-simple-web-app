# Use the official Tomcat base image
FROM tomcat:9.0

# Copy the WAR file to Tomcat's webapps directory
COPY target/my-web.war /usr/local/tomcat/webapps/my-web.war
