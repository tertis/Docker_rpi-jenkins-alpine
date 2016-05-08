FROM tertis/rpi-java-alpine

RUN apk add --update ttf-dejavu fontconfig
ADD http://mirrors.jenkins-ci.org/war/2.1/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]