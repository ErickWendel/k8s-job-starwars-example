FROM node:8-alpine

ADD . /src

WORKDIR /src 

RUN npm i -g pm2 typescript --production --silent

RUN npm i --production --silent

RUN npm run build

CMD npm start
