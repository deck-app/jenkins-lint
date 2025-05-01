FROM jenkins/jenkins:lts
COPY basic-security.groovy /usr/share/jenkins/ref/init.groovy.d/basic-security.groovy
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt
