FROM guilhem/jenkins-slave
MAINTAINER Guilhem Lettron "guilhem@lettron.fr"

COPY install.sh /install.sh
RUN sudo apt-get update
RUN sudo apt-get install libjpeg-dev curl git-core build-essential \
    python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev -y

RUN /bin/bash /install.sh && rm /install.sh
