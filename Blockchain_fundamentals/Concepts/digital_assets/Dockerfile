FROM node:carbon-alpine
RUN mkdir -p /Project_2
COPY notes.txt /Project_2
COPY simpleChain.json /Project_2
COPY testnet_block_1325438.json /Project_2
COPY package.json /Project_2
WORKDIR /Project_2
RUN npm install
RUN npm install crypto-js --save
