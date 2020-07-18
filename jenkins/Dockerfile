FROM jenkins/jenkins:lts-slim

USER root
RUN apt-get update && apt-get install -y wget packer

RUN wget https://releases.hashicorp.com/terraform/0.12.28/terraform_0.12.28_linux_amd64.zip && \
unzip terraform_0.12.28_linux_amd64.zip && \
mv terraform /usr/local/bin/

# install plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

USER jenkins