FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install web-vitals && npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
