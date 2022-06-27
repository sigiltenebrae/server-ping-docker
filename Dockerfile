FROM node:latest

RUN apt-get update && apt-get install -y git
RUN mkdir -p /home/node/ping && chown -R node:node /home/node/ping
WORKDIR /home/node/ping

RUN git clone https://github.com/sigiltenebrae/server_ping.git
WORKDIR /home/node/ping/server_ping
RUN npm install

EXPOSE 8082/tcp

CMD node ping_service.js
