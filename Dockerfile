# this Dockerfile is used for building an image that has ansible, ansible-galaxy, sshpass, docker & docker-compose


FROM jenkins/jenkins:lts

USER root
#---installing ansible and depenencies
RUN apt-get update && \
    apt-get install sshpass && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py && \
    pip install ansible --upgrade && \
    ansible-galaxy collection install community.general

#---installing docker by script and docker-compose
RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh && \
    apt-get -y install docker-compose

RUN usermod -aG docker jenkins

USER jenkins


