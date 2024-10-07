From fraunhoferiosb/frost-server:2.3.2

COPY frost-plus/target/FROST-Server-2.3.2.Plugin.STAplus-1.0.jar /usr/local/tomcat/webapps/FROST-Server/WEB-INF/lib/

USER root
RUN chgrp -R 0 /opt/connect && chmod -R g+rwX /opt/connect
USER mirth
