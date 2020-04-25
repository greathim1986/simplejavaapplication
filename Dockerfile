FROM tomcat:8
ADD target/SimpleWebApplication.war /usr/local/tomcat/webapps
EXPOSE 8585
CMD ["catalina.sh","run"]
