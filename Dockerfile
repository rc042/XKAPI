FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
RUN npm audit fix --force

COPY . .

EXPOSE 2410

CMD ["node", "index.js"]
