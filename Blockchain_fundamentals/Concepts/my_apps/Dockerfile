FROM node:carbon-alpine
RUN mkdir -p /my_app
COPY hashing.js /my_app
COPY package.json /my_app
WORKDIR /my_app
RUN npm install
CMD node hashing.js
