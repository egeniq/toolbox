FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && \
    apt-get -y install apt-utils && \
    apt-get -y install vim nano joe && \
    apt-get -y install mysql-client nfs-common redis-tools telnet git curl && \
    apt-get -y install php7.0-cli php7.0-common php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip php7.0-soap php7.0-curl && \
    apt-get -y install ruby && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get -y install nodejs && \
    npm install elasticdump -g && \
    apt-get -y clean && \
    apt-get -y autoclean && \
    apt-get -y autoremove

WORKDIR /    
CMD ["bash"]