FROM node:20-alpine

WORKDIR /app

COPY package.json .
RUN npm install

COPY graphserver.js .
COPY UScities.json .

RUN apk update && apk upgrade

EXPOSE 4000

CMD ["node", "graphserver.js"]
