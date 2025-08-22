FROM tomcat:10.1-jdk17

# Xóa webapp mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR của bạn vào Tomcat
COPY target/mavenproject2.war /usr/local/tomcat/webapps/ROOT.war

# Mở port
EXPOSE 8080

CMD ["catalina.sh", "run"]
