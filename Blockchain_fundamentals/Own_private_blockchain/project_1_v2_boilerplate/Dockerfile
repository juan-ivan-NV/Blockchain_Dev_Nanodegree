FROM node:16

EXPOSE 8000

WORKDIR /app

COPY package.json package-lock.json* app.js BlockchainController.js ./

ADD src /app

RUN npm install 

COPY . .

CMD ["node", "app.js"]