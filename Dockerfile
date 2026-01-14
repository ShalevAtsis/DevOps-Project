FROM tomcat:9.0-jdk17-temurin

COPY Shahar_Guy_Lior_Shalev/ /usr/local/tomcat/webapps/ROOT/

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
