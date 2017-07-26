FROM node:8.2.0
MAINTAINER Marcio Rabelo <mrabeloo@gmail.com>

ENV APP /app

RUN mkdir -p $APP
WORKDIR $APP
VOLUME $APP

# Install dependencies and copy the code to container
ADD package.json .
RUN npm cache clean && \
    npm install --silent && \
    npm set progress=false

COPY . .

CMD ["npm", "start"]
