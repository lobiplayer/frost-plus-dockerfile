# Use the specified base image
FROM jws60-openjdk17-openshift-rhel8

# Set the working directory
WORKDIR /opt/jws-6.0/tomcat/webapps

# Copy the WAR file from the local file system to the webapps directory in the container
COPY ../frost/FROST-Server.HTTP/target/FROST-Server.HTTP-2.3.2.war .

# Expose the necessary port (typically 8080 for Tomcat)
EXPOSE 8080

# Command to run the Tomcat server
CMD ["catalina.sh", "run"]
