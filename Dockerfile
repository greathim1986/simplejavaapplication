FROM tomcat:latest
RUN ln -s /usr/local/tomcat/webapps.dist/manager webapps/manager
RUN ln -s /usr/local/tomcat/webapps.dist/host-manager webapps/host-manager
RUN ln -s /usr/local/tomcat/webapps.dist/ROOT webapps/ROOT
ADD target/SimpleWebApplication.war /usr/local/tomcat/webapps
COPY /home/ec2-user/apache-tomcat-9.0.34/conf/tomcat-users.xml /usr/local/tomcat/conf/
EXPOSE 8090
CMD ["catalina.sh","run"]
