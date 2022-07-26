FROM node:carbon-alpine
RUN mkdir -p /files
COPY test-pattern.jpg /files
COPY encode.js /files
COPY package.json /files
WORKDIR /files
RUN npm install
RUN npm install crypto-js --save
