FROM node:18

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./

RUN yarn

COPY app.js .

EXPOSE 8080
CMD [ "node", "app.js" ]
