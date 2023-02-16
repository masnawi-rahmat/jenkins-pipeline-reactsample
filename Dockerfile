FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

#RUN npm install && \
#npm install web-vitals

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
