FROM node:8.2.0
MAINTAINER Marcio Rabelo <mrabeloo@gmail.com>

ENV APP /app

RUN npm install -g pm2

RUN mkdir -p $APP
WORKDIR $APP
VOLUME $APP

CMD ["npm", "start"]
