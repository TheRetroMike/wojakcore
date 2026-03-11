FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget -y
WORKDIR /opt/
RUN wget https://github.com/WojakCoinProj/wojakcore/releases/download/1.0.1.2/wojakcoind
RUN wget https://github.com/WojakCoinProj/wojakcore/releases/download/1.0.1.2/wojakcoin-cli
RUN chmod +x wojakcoin*
RUN mv wojakcoin* /usr/bin/
CMD /usr/bin/wojakcoind -printtoconsole
