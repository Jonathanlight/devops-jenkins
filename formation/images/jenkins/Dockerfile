
FROM jenkins/jenkins:2.166

USER root
RUN apt-get update && apt-get install curl -y
RUN curl -fsSL https://get.docker.com | sh
RUN usermod -aG staff.docker jenkins 

USER jenkins
