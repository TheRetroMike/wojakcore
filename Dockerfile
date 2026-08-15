FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget unzip -y
WORKDIR /opt/
RUN wget https://github.com/WojakCoinProj/wojakcore/releases/download/1.21.3.0/wojakcore-1.21.3.0-linux-x86_64.zip
RUN unzip wojakcore-1.21.3.0-linux-x86_64.zip
RUN chmod +x wojakcoin*
RUN mv wojakcoin* /usr/bin/
RUN mv /usr/bin/wojakcoind-linux-x86_64 /usr/bin/wojakcoind
RUN mv /usr/bin/wojakcoin-cli-linux-x86_64 /usr/bin/wojakcoin-cli
CMD /usr/bin/wojakcoind -printtoconsole
