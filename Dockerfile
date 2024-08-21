# Use the specified base image
FROM image-registry.openshift-image-registry.svc:5000/openshift/jws60-openjdk17-openshift-rhel8:latest

# Set the working directory
WORKDIR /opt/jws-6.0/tomcat/webapps

# Copy the WAR file from the local file system to the webapps directory in the container
RUN rm -rf ./*
COPY ./frost/FROST-Server.HTTP/target/FROST-Server.HTTP-2.3.2.war ./ROOT.war
COPY ./frost-plus/target/FROST-Server-2.3.2.Plugin.STAplus-1.0.jar ./ROOT/WEB-INF/lib/

# Expose the necessary port (typically 8080 for Tomcat)
EXPOSE 8080

# Command to run the Tomcat server
# CMD ["catalina.sh", "run"]
# CMD ["/opt/jws-6.0/tomcat/bin/launch.sh"]
