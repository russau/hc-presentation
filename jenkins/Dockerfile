FROM jenkins/jenkins:lts-slim

USER root
RUN apt-get update && apt-get install -y wget 

RUN wget https://releases.hashicorp.com/terraform/0.12.28/terraform_0.12.28_linux_amd64.zip && \
unzip terraform_0.12.28_linux_amd64.zip && \
mv terraform /usr/local/bin/

RUN wget https://releases.hashicorp.com/packer/1.6.0/packer_1.6.0_linux_amd64.zip && \
unzip packer_1.6.0_linux_amd64.zip && \
mv packer /usr/local/bin/


# install plugins
# got a list of plugins using this: https://stackoverflow.com/a/41271403/109102
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

USER jenkins