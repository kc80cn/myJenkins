# this Dockerfile is used for building an image that has ansible, ansible-galaxy, sshpass, docker & docker-compose, blueocean


FROM jenkins/jenkins:2.249.3-slim
USER root

#---installing ansible and depenencies
RUN apt-get -y  update && apt-get -y install sshpass && apt-get -y install python3 && apt-get -y install python3-pip
RUN pip3 install ansible --upgrade && ansible-galaxy collection install community.general

#---installing docker by script and docker-compose
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh && apt-get -y install docker-compose
	
RUN usermod -aG docker jenkins
USER jenkins
RUN jenkins-plugin-cli --plugins blueocean:1.24.3
